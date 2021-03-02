const randomstring = require('randomstring');
const {I} = inject();

module.exports = {

    // setting locators

    submitButton: {css: '.btn-default'},
    // introducing methods
    searchWith(caseName) {
        I.fillField('#mtrMatNumber', caseName);
    },
    clickSearch() {
        I.click('#submitButton');
    }

}
