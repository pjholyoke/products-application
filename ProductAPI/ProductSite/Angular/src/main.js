define(["require", "exports", '@angular/core', '@angular/platform-browser-dynamic', './app/app.module', './environments/environment'], function (require, exports, core_1, platform_browser_dynamic_1, app_module_1, environment_1) {
    "use strict";
    if (environment_1.environment.production) {
        core_1.enableProdMode();
    }
    platform_browser_dynamic_1.platformBrowserDynamic().bootstrapModule(app_module_1.AppModule)
        .catch(function (err) { return console.error(err); });
});
//# sourceMappingURL=main.js.map