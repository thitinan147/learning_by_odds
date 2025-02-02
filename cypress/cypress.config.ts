import { defineConfig } from "cypress";

export default defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here

    },
  },
  viewportWidth: 1024,
  viewportHeight: 700,

  watchForFileChanges: false,

  defaultCommandTimeout: 10000,

  video: true,
  chromeWebSecurity: false

});
