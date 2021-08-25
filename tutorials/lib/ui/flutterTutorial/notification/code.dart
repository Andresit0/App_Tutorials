String firebaseCloudMessaging = '''
1. Add new project (Default Account for Firebase)
2. Select the Android or iOS icon.
3. Android package name should be similar  (android/app/build.gradle applicationId “[package_name_hear]”)
5.  Configure app according information of the firebase
''';

String pubspec = '''
flutter_local_notifications: ^8.1.0
firebase_messaging: ^10.0.4
firebase_core: ^1.4.0
''';

String changetitlebody = '''
flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
''';

String sendNotification = '''
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<bool> sendNotification(
    String userName, String body, String userCode, String cypherCode) {
  var url = Uri.https('fcm.googleapis.com', '/fcm/send', {'q': '{https}'});
  String serverKey =
      ‘Insert Server Code HEAR;
  http
      .post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'key=\$serverKey',
    },
    body: jsonEncode(
      <String, dynamic>{
        'notification': <String, dynamic>{
          'body': body,
          'title': userName,
        },
        'priority': 'high',
        'data': <String, dynamic>{
          'click_action': 'FLUTTER_NOTIFICATION_CLICK',
          'id': cypherCode,
          'status': 'done'
        },
        'to': userCode,
      },
    ),
  )
      .then((result) {
    print('MESSAGE SEND:  ' + result.body.toString());
  }).catchError((error) {
    print('ERROR SENDDIN DATA:   ' + error.toString());
  });
  return Future<bool>.value(true);
}
''';

String mainDart = '''
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  //ON FirebaseMessage when APP is CLOSED do:
 if (message.notification!.title!.isNotEmpty) {
	print('A bg message just showed up1 :  \${message.messageId}');
	print('A bg message just showed up1 :  \${message.notification!.title!}');
	print('A bg message just showed up1 :  \${message.notification!.body!}');
 }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  runApp(MyApp());
}
''';

String myHomePageState = '''
printFCM() async {
    var fcm = await FirebaseMessaging.instance.getToken();
    print('FCM token: ' + fcm.toString());
  }


@override
  void initState() {
    super.initState();
    printFCM();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
	print("MESSAGE VALUE: " + message.data.values.first);
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
	print("MESSAGE VALUE: " + message.data.values.first);
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text(notification.title.toString()),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(notification.body.toString())],
                  ),
                ),
              );
            });
      }
    });
  }


void showNotification() {
    setState(() {});
    flutterLocalNotificationsPlugin.show(
        0,
        "Testing ",
        "How you doin ?",
        NotificationDetails(
            android: AndroidNotificationDetails(
                channel.id, channel.name, channel.description,
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
  }
''';

String scaffold = '''
Scaffold(
floatingActionButton: FloatingActionButton(
        onPressed: showNotification,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
''';
