# sl-test-fw
![CI](https://github.com/bugbare/sl-test-fw/workflows/CI/badge.svg)

## Configuration
At the moment the framework has configuration for both gherkin and page objects applied to the standard Codeceptjs setup. One simple E2E test has been setup using bdd and the codecept generic dsl to compare them.
The driver being used is Selenium Webdriver, default is not headless when running locally (Chrome being used).

## Running Tests
### Headless
<code>HEADLESS=true npx codeceptjs run --steps</code>

### Default Browser (Currently Chrome)
<code>npx codeceptjs run --steps</code>

## Plugins/Extensions
### BDD Framework
The project is using the codecept gherkin snippet template in order to manage and maintain a user readable test format in a standardised approach. The language used attempts to stick to D-R-Y principles as much as possible to limit the number of steps, encourage reuse and low maintenance overhead.

This means identify simple user action phrases so that steps and the contaning step definition files are kept to a minimum.

### Page Object Model
To enhance this low maintenance overhead objective, the page object model snippet plugin for codeceptjs has also been added.
