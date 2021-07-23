import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/global/speak.dart' as globalSpeak;
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
                    .openAWeb("https://github.com/Andresit0/Speak_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('Speak',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              width: size * 150,
              child: globalSpeak.speak(),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('initState() and dispose()',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Over \"@override Widget build(BuildContext context)\" insert the next code',
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
                        Clipboard.setData(ClipboardData(text: code.initState))),
              ),
            ),
            Container(
              child: SelectableText(
                code.initState,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('/android/app/build.gradle',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Change the minimum sdk version to 21',
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
                        ClipboardData(text: code.minSdkValue))),
              ),
            ),
            Container(
              child: SelectableText(
                code.minSdkValue,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('pubspec.yaml',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Insert a dependencie',
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
                        ClipboardData(text: code.pubspecYaml))),
              ),
            ),
            Container(
              child: SelectableText(
                code.pubspecYaml,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('speak.dart',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Main code used to speak through the app',
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
                        ClipboardData(text: code.speakValue))),
              ),
            ),
            Container(
              child: SelectableText(
                code.speakValue,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
