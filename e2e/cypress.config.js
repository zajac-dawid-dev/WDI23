const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: 'https://warszawskiedniinformatyki.pl',
    responseTimeout: 10000,
    reporter: 'junit',
  },
});
