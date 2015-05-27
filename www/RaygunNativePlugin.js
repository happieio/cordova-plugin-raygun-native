module.exports = {
    startNativeRaygun: function (userIdentifier, apiKey) {
        var defaults = {user: userIdentifier, api: apiKey};
        cordova.exec(null, null, "CrashlyticsPlugin", "startNativeRaygun", [defaults]);
    },

    testCrash: function () {
        var defaults = {};
        cordova.exec(null, null, "CrashlyticsPlugin", "testCrash", [defaults]);
    }
};