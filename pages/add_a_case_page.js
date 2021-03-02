const randomstring = require('randomstring');
const {I} = inject();

module.exports = {

    // setting locators
    submitButton: {css: '.btn-default'},
    // introducing methods
    clickAddNew() {
        I.click("Add a Case");
    },
    selectJurisdiction() {
        I.click('.btn.dropdown-toggle.btn-light.bs-placeholder');
        I.click('Civil');
    },
    selectService() {
        I.selectOption('#mtrCategoryId', 'Appeals');
    },
    selectHearingCenter() {
        I.selectOption('#regionCode', 'Oxford');
    },
    caseReceivedDate() {
        const datetime = new Date();
        const appReceivedDate = datetime.toJSON().slice(0, 10).split('-').reverse().join('/')
        I.fillField('#appReceived', appReceivedDate);
    },
    selectHMCTSCaseID() {
        const HMCTSCaseID = randomstring.generate({length: 10, charset: 'alphabetic'});
        I.fillField('#mtrNumberAdded', HMCTSCaseID);
        console.log('This is the HMCTSCaseID '+HMCTSCaseID);
        this.setHMCTSCaseID(HMCTSCaseID);
    },
    enterCaseName() {
        const randomCaseName = randomstring.generate({length: 10, charset: 'alphabetic'});
        I.fillField('#mtrAltTitleTxt', randomCaseName);
        console.log('This is the randomCaseName '+randomCaseName);
        this.setCaseName(randomCaseName);

    },
    clickSaveAndAddListingRequirements() {
        I.click("#saveHearingReqButton");
        I.wait(5);
    },
    clickSignOut() {
        I.click({css: 'a[href*="LogoutAction.action"]'});
    },
    setHMCTSCaseID(CaseID) {
        this.testHMCTSCaseID = CaseID;
    },
    getHMCTSCaseID() {
        return this.testHMCTSCaseID;
    },
    setCaseName(caseName) {
        this.testCaseName = caseName;
    },
    getCaseName() {
        return this.testCaseName;
    }

}
