const {event} = require('codeceptjs');

event.dispatcher.on(event.test.before, function (test) {
    if (test.tags.includes('@pending')) {
        test.run = function skip() {
            this.skip();
        };
    }
});
