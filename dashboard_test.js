Feature('dashboard');


Scenario('Login test', async (I) => {
    I.amOnPage('/');
    I.seeElement('#login');
    I.seeElement('#j_username');
    I.seeElement('#j_password');
    I.fillField('#j_username', 'user18');
    I.fillField('#j_password', 'HMCTStest');
    I.click({ css: '.btn-default' });
    I.click({ css: 'a[href*="LogoutAction.action"]'});
    I.seeElement('#login');
    I.seeElement('#j_username');
    I.seeElement('#j_password');
    I.wait(5);
});
