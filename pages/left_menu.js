const randomstring = require('randomstring');
const {I} = inject();

module.exports = {

    // setting locators

    submitButton: {css: '.btn-default'},
    // introducing methods
    clickCaseSearch() {
        I.click('#matter > li:nth-child(2) > a > span.text');
    },
    searchCaseWith(caseName) {
        I.fillField('#mtrMatNumber', caseName);
    }

}
