String cleartextTraffic = '''
<application
        android:label="flutter_text"
        android:usesCleartextTraffic="true"				<—————
        android:icon="@mipmap/ic_launcher">
''';

String cleartextTraffic2 = '''
android:usesCleartextTraffic="true"
''';

String permission = '''
package="com.example.flutter_text">
    <uses-permission android:name="android.permission.INTERNET" />							<———
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />			<———
    <uses-permission android:name="android.permission.WAKE_LOCK" />							<———
   <application
''';

String permission2 = '''
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.WAKE_LOCK" />	
''';

String minSDK = '''
minSdkVersion 19
''';

String dependencie = '''
dependencies:
  flutter:
    sdk: flutter
  flutter_tex: ^4.0.1   <—————
''';

String dependencie2 = '''
  flutter_tex: ^4.0.1
''';

String ios = '''
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key> <true/>
    </dict>
    <key>io.flutter.embedded_views_preview</key> <true/> 
''';

String web = '''
<meta charset="UTF-8">
<title>Flutter TeX</title>
<script src="assets/packages/flutter_tex/js/flutter_tex.js"></script>
<script type="text/javascript">window.flutterWebRenderer = "html";</script>
''';
