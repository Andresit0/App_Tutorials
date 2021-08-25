String firstStep = '''
On <manifest xmlns:android="http://schemas.android.com/apk/res/android" insert app permissions. For instance:

<uses-permission android:name="android.permission.INTERNET"/>

On “android:label” insert the app name of the “Google Play”. For instance:

android:label=“Tutorials”
''';

String secondStep = '''
applicationId “……………”
minSdkVersion 21
targetSdkVersion 30
''';

String thirdStep = '''
name: complete
description: complete
version: 1.0.0+1
''';

String fourthStep = '''
https://www.favicon-generator.org/
https://appicon.co/
https://appiconmaker.co/
https://www.iconcutter.com/
''';

String fithStep = '''
keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
''';

String sixthStep = '''
storePassword= *******
keyPassword= ******
keyAlias=key
storeFile=/Volumes/Andresito/programas/appsFlutter/habla_andrea/key_play_store/key.jks

def keystorePropertiesFile = rootProject.file("keystore.properties");
def keystoreProperties = new Properties()
keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
''';

String seventhStep = '''
buildTypes {
       release {
           // TODO: Add your own signing config for the release build.
           // Signing with the debug keys for now,
           // so `flutter run --release` works.
           signingConfig signingConfigs.debug
       }
   }
''';

String eightStep = '''
signingConfigs {
        release {
            storeFile file(keystoreProperties['storeFile'])
            storePassword keystoreProperties['storePassword']
            keyAlias keystoreProperties['keyAlias']
            keyPassword keystoreProperties['keyPassword']
        }
    }

    buildTypes {
       release {
           signingConfig signingConfigs.release
       }
   }
''';

String nineStep = '''
flutter build appbundle
''';
