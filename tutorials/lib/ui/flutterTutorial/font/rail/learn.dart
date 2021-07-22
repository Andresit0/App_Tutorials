import 'package:flutter/material.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/global/var.dart' as globalVar;
import '/ui/img/icon/icon_downloaded.dart' as iconDownloaded;

Widget attributes(double size) {
  return Container(
    child: Column(
      children: [
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock(
                  'String strText:', Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Text that goes used',
                  Colors.black, size * 4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock(
                  'Color color:', Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Color of the text', Colors.black, size * 4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock(
                  'double fontSize:', Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Size of the text', Colors.black, size * 4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('TextAlign textAlign:', Colors.black,
                  size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Specify how to go to align the text',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
      ],
    ),
  );
}

Widget learn(double size, BuildContext context) {
  return Container(
    alignment: Alignment.topLeft,
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
                globalFunc.openAWeb(
                    "https://github.com/Andresit0/Fonts_Template_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('FONTS',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              width: size * 200,
              child: Image(
                image: AssetImage(globalVar.imgFlutterFont),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Information',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'This template is used inside the user interface folder (/lib/ui/font.dart) and it use the google_fonts package',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Attributes',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Not all buttons contains all varibles',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            attributes(size),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
