import 'package:flutter/material.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/global/var.dart' as globalVar;
import '../../../img/icon/icon_downloaded.dart' as iconDownloaded;

Widget attributes(double size) {
  return Container(
    child: Column(
      children: [
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('BuildContext context:',
                  Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Context to build the dialog',
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
                  'Color colorClose:', Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Color of the Icon to close the app',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Color colorHeaderBackground:',
                  Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Color of the header background',
                  Colors.black, size * 4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('double dialogHeight:', Colors.black,
                  size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Height of the dialog',
                  Colors.black, size * 4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('double dialogWidth:', Colors.black,
                  size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Width of the dialog',
                  Colors.black, size * 4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('List<Widget> inferiorButtons:',
                  Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Widgets that will be shown in the footer (icons, buttons, text, etc)',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock(
                  'Widget body:', Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'It is a widget that contains all body information (icons, buttons, text, etc)',
                  Colors.black,
                  size * 4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock(
                  'Widget title:', Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'It is a widget that is generally used to insert a title that appears in the header section',
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
                    "https://github.com/Andresit0/Dialog_Templates_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('DIALOGS',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              width: size * 100,
              height: size * 100,
              child: Image(
                image: AssetImage(globalVar.imgFlutterDiag),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Header, Body and Footer',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'The dialog could be divided into 3 parts that are showed in the before image',
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
