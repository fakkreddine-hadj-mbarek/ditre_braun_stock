'use strict';

/**
 * cable service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::cable.cable');
