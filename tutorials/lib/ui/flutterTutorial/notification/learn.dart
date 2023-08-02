import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import 'code.dart' as code;

Widget learn(double size, BuildContext context) {
  // final List<Widget> pages = <Widget>[
  //   new ConstrainedBox(
  //     constraints: const BoxConstraints.expand(),
  //     child: new FlutterLogo(),
  //   ),
  //   new ConstrainedBox(
  //     constraints: const BoxConstraints.expand(),
  //     child: new FlutterLogo(style: FlutterLogoStyle.stacked),
  //   ),
  //   new ConstrainedBox(
  //     constraints: const BoxConstraints.expand(),
  //     child: new FlutterLogo(style: FlutterLogoStyle.horizontal),
  //   ),
  // ];
  return Expanded(
    child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: globalBtn.btnIconCircle(
                  size * 15, size * 10, false, Colors.black, Icons.web, context,
                  () {
                globalFunc.openAWeb("https://firebase.google.com/");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('FIREBASE',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Using Firebase Cloud Messaging it is possible to send notifications',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () => Clipboard.setData(
                        ClipboardData(text: code.firebaseCloudMessaging))),
              ),
            ),
            Container(
              child: SelectableText(
                code.firebaseCloudMessaging,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('FLUTTER V2',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Add in the pubspec.yaml',
                  Colors.black, size * 4, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () => Clipboard.setData(ClipboardData(text: code.pubspec))),
              ),
            ),
            Container(
              child: SelectableText(
                code.pubspec,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'To change title or body it is necessary change “notification.title” and “notification.body” on the next code:',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () => Clipboard.setData(
                        ClipboardData(text: code.changetitlebody))),
              ),
            ),
            Container(
              child: SelectableText(
                code.changetitlebody,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'To obtain the “notification id” of the jsonEncode use “message.data.values.first” in the main.dart. The code to send notifications (using: “http: ^0.13.3”) is',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () => Clipboard.setData(
                        ClipboardData(text: code.sendNotification))),
              ),
            ),
            Container(
              child: SelectableText(
                code.sendNotification,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'In the main.dart', Colors.black, size * 4, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () =>
                        Clipboard.setData(ClipboardData(text: code.mainDart))),
              ),
            ),
            Container(
              child: SelectableText(
                code.mainDart,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Inside the class _MyHomePageState extends State<MyHomePage> ',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () => Clipboard.setData(
                        ClipboardData(text: code.myHomePageState))),
              ),
            ),
            Container(
              child: SelectableText(
                code.myHomePageState,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Inside the Scaffold',
                  Colors.black, size * 4, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () =>
                        Clipboard.setData(ClipboardData(text: code.scaffold))),
              ),
            ),
            Container(
              child: SelectableText(
                code.scaffold,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
