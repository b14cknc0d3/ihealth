# IHealth

A Flutter package to make for iHealth.

## Getting started 

### Step 1: Install IHealth

To install iheath, simply add `iheath: ` to the dependencies of your `pubspec.yaml` file: 

```yaml
dependencies:
    iheath: #latest version
```

### Step 1a: (for Android only) Modify you manifest

iheath uses `flutter_web_auth_2_2` to let you authenticate to Fitbit. In Android, you need to add these lines of code to your `android/app/src/main/AndroidManifest.xml` file:
```xml
<activity android:name="com.linusu.flutter_web_auth_2_2.CallbackActivity"
    android:exported="true">
      <intent-filter android:label="flutter_web_auth_2_2">
        <action android:name="android.intent.action.VIEW" />
        <category android:name="android.intent.category.DEFAULT" />
        <category android:name="android.intent.category.BROWSABLE" />
        <data android:scheme="CALLBACK_SCHEME" />
      </intent-filter>
    </activity>
```
and change ```CALLBACK_SCHEME``` with your callback scheme (in the test example below this will be ```example```)

### Step 1b: (for Android only) Increase the minimum Android SDK version

iheath uses `flutter_secure_storage` to securely store the Fitbit tokens. Since `flutter_secure_storage` requires that minimum Android SDK version is 18, you need to change the default minimum sdk version to 18 or above. To do so, open `android/app/build.gradle`, locate this snippet of code:
```gradle
...
defaultConfig {
        applicationId "your.app.id"
        minSdkVersion flutter.minSdkVersion
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }
...
```
and change ```minSdkVersion``` to 18 or above, e.g.,:
```gradle
...
defaultConfig {
        applicationId "your.app.id"
        minSdkVersion 18
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }
...
```

### Step 1(Android)

iheath uses `flutter_web_auth_2` to let you authenticate to Fitbit. In order to let it work correcty please be sure that your emulator or your physical device is using Chrome, Opera, or Firefox as default web browser. 



#### App authentication 

### STEP 1 (create auth url)
```dart
    final IHealthAuthUrl iHealthAuthUrl = IHealthAuthUrl(
                          clientSecret: clientSecret,
                          clientId: clientId,
                          redirectUri: AppConstant.fitibitRedirectUri,
                          credencial: null);
```
### STEP 2 (authenticate)
```dart
   _iHealthCredencial = await IHealthService.authorize(
authUrl: iHealthAuthUrl,
redirectScheme: redirectScheme);

```

#### Fetch Bp count
### Create bpUrl
```dart
 final IHealthDataUrl iHealthBpUrl = IHealthDataUrl(
                      sc: scBp,
                      sv: svBp,
                      credencial: _iHealthCredencial,
                      redirectUrl: AppConstant.fitibitRedirectUri,
                      clientId: clientId,
                      clientSecret: clientSecret,
                    );
```

### getBp
```dart
  final x = await IHealthService.getBpByUserId(
                        iHealthBpUrl: iHealthBpUrl, pageIndex: 1);
```
#### Progress 

- [x] bp
- [x] weight
- [ ] BG
- [ ] SpO2
- [ ] Activity Report
- [ ] Sleep Report
- [ ] Food
- [ ] Sport Report
- [ ] Temperature
- [ ] HeartRate
  
### thanks for fitbitter author

### HELP wanted for better doc