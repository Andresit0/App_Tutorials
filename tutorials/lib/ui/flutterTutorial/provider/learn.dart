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
                    .openAWeb("https://github.com/Andresit0/Provider_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('PROVIDER',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Dependencies:', Colors.black, size * 4, TextAlign.start),
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
                        ClipboardData(text: code.dependencies))),
              ),
            ),
            Container(
              child: SelectableText(
                code.dependencies,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Code:', Colors.black, size * 4, TextAlign.start),
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
                        ClipboardData(text: code.writeReadCode))),
              ),
            ),
            Container(
              child: SelectableText(
                code.writeReadCode,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
