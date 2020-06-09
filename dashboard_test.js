Feature('dashboard');


Scenario('Login test', async (I, login) => {
    I.amOnPage('/');
    login.sendForm('user18','HMCTStest');
    I.wait(1);
    I.click({ css: 'a[href*="LogoutAction.action"]'});
    I.seeElement(login.fields.loginbox);
    I.seeElement(login.fields.username);
    I.seeElement(login.fields.password);
});
