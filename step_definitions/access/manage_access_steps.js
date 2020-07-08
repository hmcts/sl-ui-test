const { I, login } = inject();
// Add in your custom step files

Given('I am on the welcome screen', () => {
  // From "features/access.feature" {"line":7,"column":5}
  I.amOnPage('/');
});

Given('there is a login box', () => {
  // From "features/access.feature" {"line":8,"column":5}
  I.seeElement(login.fields.loginbox);
});

Given('I submit my login credentials', () => {
  // From "features/access.feature" {"line":9,"column":5}
  login.sendForm('user18','HMCTStest');
});

Given('I am on my personal dashboard', () => {
  // From "features/access.feature" {"line":10,"column":5}
  I.seeElement({ css: 'a[href*="LogoutAction.action"]'});
});

When('I click on Signout', () => {
  // From "features/access.feature" {"line":11,"column":5}
  I.click({ css: 'a[href*="LogoutAction.action"]'});
});
