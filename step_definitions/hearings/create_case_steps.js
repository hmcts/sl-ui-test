const {I, login, addCase, listingRequirements, leftMenu, caseSearch} = inject();
// Add in your custom step files

Given('I am on add new page', async () => {
    // From "features/access.feature" {"line":7,"column":5}
    I.amOnPage('/');
    I.saveScreenshot("Login_Image.png");
    I.seeElement(login.fields.loginbox);
    login.sendForm('Listing-admin', 'password');
    I.seeElement({css: '#menu > li.h6'});
    I.seeElement({css: 'a[href*="LogoutAction.action"]'});
    I.saveScreenshot("Dashboard_Image.png");
    addCase.clickAddNew();
});

When('I add all the valid details', () => {
    addCase.selectJurisdiction();
    addCase.selectService();
    addCase.selectHearingCenter();
    addCase.caseReceivedDate();
    addCase.selectHMCTSCaseID();
    addCase.enterCaseName();
    addCase.clickSaveAndAddListingRequirements();
    listingRequirements.selectSessionType();
    listingRequirements.selectListingHearingType();
});

When('I submit the data', () => {
    listingRequirements.clickSave();
});

Then('I case should be created successfully', () => {
    leftMenu.clickCaseSearch();
    caseSearch.searchWith(addCase.getHMCTSCaseID());
    caseSearch.clickSearch();
    I.see(addCase.getHMCTSCaseID().toUpperCase() + " - " + addCase.getCaseName());
    addCase.clickSignOut();
});




