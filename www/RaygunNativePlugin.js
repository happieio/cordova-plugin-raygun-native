module.exports = {
    startNativeRaygun: function (userIdentifier) {
        var defaults = {value: userIdentifier};
        cordova.exec(null, null, "CrashlyticsPlugin", "startNativeRaygun", [defaults]);
    }
};