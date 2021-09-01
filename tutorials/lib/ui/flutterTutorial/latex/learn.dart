import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/global/var.dart' as globalVar;
import '/ui/img/icon/icon_downloaded.dart' as iconDownloaded;
import 'code.dart' as code;

Widget learn(double size, BuildContext context) {
  return Expanded(
    child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: globalBtn.btnIconCircle(
                  size * 15,
                  size * 10,
                  false,
                  Colors.black,
                  iconDownloaded.IconDownloaded.github_circled,
                  context, () {
                globalFunc
                    .openAWeb("https://github.com/Andresit0/Latex_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('Latex',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              width: size * 150,
              child: Image(
                image: AssetImage(globalVar.imgFlutterLatex),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Android',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Add “ android:usesCleartextTraffic="true"” on /android/app/src/main/AndroidManifest.xml',
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
                        ClipboardData(text: code.cleartextTraffic2))),
              ),
            ),
            Container(
              child: SelectableText(
                code.cleartextTraffic,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Furthermore, add permissions',
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
                    () => Clipboard.setData(
                        ClipboardData(text: code.permission2))),
              ),
            ),
            Container(
              child: SelectableText(
                code.permission,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'on /android/app/build.gradle change the min SDK',
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
                    () => Clipboard.setData(ClipboardData(text: code.minSDK))),
              ),
            ),
            Container(
              child: SelectableText(
                code.minSDK,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'If you obtain the error of “java SDK”. Then, open the app in the android studio. Go to File>Project Structure> project to select android sdk ',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'On pubspec.yaml', Colors.black, size * 4, TextAlign.start),
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
                        ClipboardData(text: code.dependencie2))),
              ),
            ),
            Container(
              child: SelectableText(
                code.dependencie,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'ON iOS (/iOS/Runner/Info.plist) add the next key',
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
                    () => Clipboard.setData(ClipboardData(text: code.ios))),
              ),
            ),
            Container(
              child: SelectableText(
                code.ios,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('ON WEB (/web/index.html)',
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
                    () => Clipboard.setData(ClipboardData(text: code.web))),
              ),
            ),
            Container(
              child: SelectableText(
                code.web,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
