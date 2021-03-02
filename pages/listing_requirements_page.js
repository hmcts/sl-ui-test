const randomstring = require('randomstring');
const {I} = inject();

module.exports = {

    // setting locators

    submitButton: {css: '.btn-default'},
    // introducing methods
    selectSessionType() {
        I.selectOption('#sessionType', 'ADHOC');
    },
    selectListingHearingType() {
        I.selectOption('#heringTypeList', 'Judgement');
    },
    clickSave() {
        I.click('#btnSave');
        I.wait(2);
    }

}
