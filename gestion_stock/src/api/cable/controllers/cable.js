'use strict';

/**
 * cable controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::cable.cable');
