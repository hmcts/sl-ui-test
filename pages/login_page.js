const {I} = inject();

module.exports = {

    // setting locators
    fields: {
        loginbox: '#login',
        username: '#j_username',
        password: '#j_password'
    },
    submitButton: {css: '.btn-default'},

    // introducing methods
    sendForm(username, password) {
        I.seeElement(this.fields.loginbox);
        I.seeElement(this.fields.username);
        I.seeElement(this.fields.password);
        I.fillField(this.fields.username, username);
        I.fillField(this.fields.password, password);
        I.click(this.submitButton);
    }
}
