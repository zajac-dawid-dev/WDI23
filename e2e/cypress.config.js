const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: 'http://10.0.0.1:80',
    responseTimeout: 10000
  },
});
