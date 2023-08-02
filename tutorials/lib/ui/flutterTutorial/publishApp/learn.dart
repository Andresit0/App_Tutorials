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
                globalFunc
                    .openAWeb("https://flutter.dev/docs/deployment/android");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('Publish an APP',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Go to “/android/app/src/main/AndroidManifest.xml',
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
                    () =>
                        Clipboard.setData(ClipboardData(text: code.firstStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.firstStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Inside “/android/app/build.gradle” review',
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
                        ClipboardData(text: code.secondStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.secondStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Inside “pubspec.yaml” specify the version',
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
                    () =>
                        Clipboard.setData(ClipboardData(text: code.thirdStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.thirdStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Add an icon (/android/app/src/main/res). It is possible use the next page:',
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
                        ClipboardData(text: code.fourthStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.fourthStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  '5. Sign the app (/android/key.properties). In the terminal',
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
                    () =>
                        Clipboard.setData(ClipboardData(text: code.fithStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.fithStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Create “key.properties” and insert',
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
                    () =>
                        Clipboard.setData(ClipboardData(text: code.sixthStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.sixthStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Reemplace', Colors.black, size * 4, TextAlign.start),
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
                        ClipboardData(text: code.seventhStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.seventhStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'By', Colors.black, size * 4, TextAlign.start),
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
                        Clipboard.setData(ClipboardData(text: code.eightStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.eightStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Obtain Flutter app release (/build/app/outputs/bundle/release/app.aab)',
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
                    () =>
                        Clipboard.setData(ClipboardData(text: code.nineStep))),
              ),
            ),
            Container(
              child: SelectableText(
                code.nineStep,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
