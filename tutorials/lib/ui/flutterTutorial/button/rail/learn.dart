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
              child: globalFont.titleBlock('Color borderColor:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Color used in the border of the button',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Color btnBackground:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Represent the background color inside of the border',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Color clickColor:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Color that appears when the user makes a click',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Color iconColor:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Color of the icon inserted',
                  Colors.black, size * 0.4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('double borderRadius:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  '0 or 360 to has a square or circle button (if the width and height of the container that has the buttons is the same)',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('double borderWidth:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Width of the border',
                  Colors.black, size * 0.4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('double iconSize:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Size of the button',
                  Colors.black, size * 0.4, TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Function onPressed:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Function that will be executed after the user makes a click',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('IconData btnIcon:', Colors.black,
                  size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'IconData widget that will be used',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Wrap(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('EdgeInsets paddingBetweenIconText:',
                  Colors.black, size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'EdgeInsets widget that separate the icon and text',
                  Colors.black,
                  size * 0.4,
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
                  'Widget text:', Colors.black, size * 0.4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Widget that could be inserted generally is used to insert a text widget',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
          ],
        ),
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
                  size * 1.3,
                  size * 0.8,
                  false,
                  Colors.black,
                  iconDownloaded.IconDownloaded.github_circled,
                  context, () {
                globalFunc.openAWeb(
                    "https://github.com/Andresit0/Buttons_Templates_for_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('BUTTONS',
                  Theme.of(context).primaryColor, size, TextAlign.center),
            ),
            Container(
              child: Image(
                image: AssetImage(globalVar.imgFlutterBtn),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Width and Height',
                  Theme.of(context).primaryColor, size * 0.5, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'To change the width and height of the buttons we need insert the buttons inside a \"Container()\" and edit its width and height attributes.',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Attributes',
                  Theme.of(context).primaryColor, size * 0.5, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Not all buttons contains all varibles',
                  Colors.black,
                  size * 0.4,
                  TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            attributes(size),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
