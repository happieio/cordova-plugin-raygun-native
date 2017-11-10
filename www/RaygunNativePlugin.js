module.exports = {
    startNativeRaygun: function (userIdentifier, apiKey) {
        var defaults = {user: userIdentifier, api: apiKey};
        cordova.exec(null, null, "RaygunNativePlugin", "startNativeRaygun", [defaults]);
    },
	
    updateNativeLogs: function (ops) {
        cordova.exec(null, null, "RaygunNativePlugin", "updateNativeLogs", ops);
    },

    testCrash: function () {
        var defaults = {};
        cordova.exec(null, null, "RaygunNativePlugin", "testCrash", [defaults]);
    }
};