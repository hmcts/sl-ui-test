const { setHeadlessWhen } = require('@codeceptjs/configure');

// turn on headless mode when running with HEADLESS=true environment variable
// HEADLESS=true npx codecept run
setHeadlessWhen(process.env.HEADLESS);

exports.config = {
  output: './functional-output',
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
            "--disable-gpu", 
            "--no-sandbox" ]
        },
        firefoxOptions: {
          args: []
        }
      }
    }
  },
  include: {
    I: './steps_file.js',
    login: './pages/access/login_page.js'
  },
  mocha: {
    "reporterOptions": {
      "codeceptjs-cli-reporter": {
        "stdout": "./functional-output/console.log",
        "options": {
          "steps": true,
        }
      },
      "mochawesome": {
        "stdout": "-",
        "options": {
          "reportDir": "./functional-output"
        }
      }
    }
  },
  bootstrap: null,
  teardown: null,
  hooks: [
    'hooks/run_hooks.js'
  ],
  gherkin: {
    features: './features/*/*.feature',
    steps: ['./step_definitions/access/manage_access_steps.js',
            './step_definitions/resources/manage_resources_steps.js',
           './step_definitions/patterns/manage_patterns_steps.js']
  },
  plugins: {
    screenshotOnFail: {
      enabled: true
    },
    wdio: {
      enabled: true,
      services: ['selenium-standalone']
    },
    retryFailedStep: {
      enabled: true
    }
  },
  tests: './*_test.js',
  name: 'sl-test-fw'
};
