// This file is required by karma.conf.js and loads recursively all the .spec and framework files
define(["require", "exports", '@angular/core/testing', '@angular/platform-browser-dynamic/testing', 'zone.js/testing'], function (require, exports, testing_1, testing_2) {
    "use strict";
    // First, initialize the Angular testing environment.
    testing_1.getTestBed().initTestEnvironment(testing_2.BrowserDynamicTestingModule, testing_2.platformBrowserDynamicTesting(), { teardown: { destroyAfterEach: true } });
    // Then we find all the tests.
    var context = require.context('./', true, /\.spec\.ts$/);
    // And load the modules.
    context.keys().map(context);
});
//# sourceMappingURL=test.js.map