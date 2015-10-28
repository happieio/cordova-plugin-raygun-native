# cordova-plugin-raygun-native
iOS and Android native side integration of Raygun for cordova projects.

## SETUP
add the following to your config.xml

    <platform name="android">
        <config-file target="AndroidManifest.xml" parent="application">
            <meta-data android:name="com.mindscapehq.android.raygun4android.apikey" android:value="Your_RayGun_API_Key" />
        </config-file>
    </platform>
