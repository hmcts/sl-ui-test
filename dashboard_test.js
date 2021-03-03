Feature('dashboard');


Scenario('Login test', async (I, login) => {
    I.amOnPage('/');
    login.sendForm('','');
    I.wait(2);
    I.click({ css: 'a[href*="LogoutAction.action"]'});
    I.seeElement(login.fields.loginbox);
    I.seeElement(login.fields.username);
    I.seeElement(login.fields.password);
});
