const ldap = require('ldapjs');

module.exports = ({ strapi }) => ({
  controllers: {
    auth: {
      async callback(ctx) {
        const { identifier, password } = ctx.request.body;

        if (!identifier || !password) {
          return ctx.badRequest('Missing identifier or password');
        }

        // LDAP Configuration
        const ldapClient = ldap.createClient({
          url: process.env.LDAP_URL, // Example: "ldap://example.com"
        });

        const bindDN = process.env.LDAP_BIND_DN; // e.g., "CN=Admin,CN=Users,DC=domain,DC=com"
        const bindPassword = process.env.LDAP_BIND_PASSWORD;
        const searchBase = process.env.LDAP_SEARCH_BASE; // e.g., "DC=domain,DC=com"
        const searchFilter = `(sAMAccountName=${identifier})`;

        try {
          // Bind to the LDAP server
          await new Promise((resolve, reject) =>
            ldapClient.bind(bindDN, bindPassword, (err) => (err ? reject(err) : resolve()))
          );

          // Search for the user in LDAP
          const user = await new Promise((resolve, reject) => {
            ldapClient.search(
              searchBase,
              { filter: searchFilter, scope: 'sub' },
              (err, res) => {
                if (err) reject(err);

                let user = null;
                res.on('searchEntry', (entry) => {
                  user = entry.object;
                });

                res.on('end', () => resolve(user));
                res.on('error', reject);
              }
            );
          });

          if (!user) {
            return ctx.badRequest('Invalid credentials');
          }

          // Verify the user's password by re-binding
          await new Promise((resolve, reject) =>
            ldapClient.bind(user.dn, password, (err) => (err ? reject(err) : resolve()))
          );

          // Check if the user exists in Strapi
          let strapiUser = await strapi.entityService.findOne('plugin::users-permissions.user', {
            filters: { email: user.mail },
          });

          if (!strapiUser) {
            // Optionally create the user
            strapiUser = await strapi.entityService.create('plugin::users-permissions.user', {
              data: {
                username: user.sAMAccountName,
                email: user.mail,
                confirmed: true,
                role: 1, // Default role ID
              },
            });
          }

          // Generate JWT token
          const jwt = strapi.plugins['users-permissions'].services.jwt.issue({
            id: strapiUser.id,
          });

          return ctx.send({
            jwt,
            user: strapiUser,
          });
        } catch (error) {
          console.error('LDAP authentication failed:', error);
          return ctx.badRequest('Authentication failed');
        } finally {
          ldapClient.unbind();
        }
      },
    },
  },
});
