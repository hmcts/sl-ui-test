const { setHeadlessWhen } = require('@codeceptjs/configure');

// turn on headless mode when running with HEADLESS=true environment variable
// HEADLESS=true npx codecept run
setHeadlessWhen(process.env.HEADLESS);

exports.config = {
  tests: './*_test.js',
  output: './output',
  helpers: {
    WebDriver: {
      url: 'https://demo.mcgirrtech.com/HMCTSQA4.6',
      browser: 'chrome',
      host: '127.0.0.1',
      port: 4444,
      restart: false,
      windowSize: '1920x1680',
      desiredCapabilities: {
        chromeOptions: {
          args: [ 
            // "--headless", 
            "--disable-gpu", 
            "--no-sandbox" ]
        }
      }
    }
  },
  include: {
    I: './steps_file.js'
  },
  bootstrap: null,
  mocha: {},
  name: 'sl-test-fw',
  plugins: {
    wdio: {
      enabled: true,
      services: ['selenium-standalone']
    },
    retryFailedStep: {
      enabled: true
    },
    screenshotOnFail: {
      enabled: true
    }
  }
}