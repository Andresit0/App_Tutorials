import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '/ui/global/slidable/clr.dart';
import '/ui/global/slidable/widgetLeftRight.dart';
import '/ui/global/slidable/widgetMain.dart';
import '/ui/global/slidable/widgetMainText.dart';
import '/ui/global/slidable/slidable.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/img/icon/icon_downloaded.dart' as iconDownloaded;
import 'code.dart' as code;

Widget horizontalListExample(Color primaryColor, Color secundaryColor) {
  late final SlidableController slidableController = SlidableController();
  List<Widget> listWidget = [
    widgetText('TITLE 1'),
    widgetText('TITLE 2'),
    widgetText('TITLE 3'),
    widgetText('TITLE 4')
  ];
  return StatefulBuilder(builder: (context, setState) {
    return Container(
      color: primaryColor,
      padding: EdgeInsets.all(10),
      child: Container(
        child: ListView.builder(
          itemCount: listWidget.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              child: slidableLeft(
                  slidableController,
                  widgetMain_2(listWidget[index], primaryColor, secundaryColor),
                  widgetLeftRight_1(Icons.delete, Colors.white, primaryColor,
                      () {
                    setState(() {
                      listWidget.removeAt(index);
                    });
                  }),
                  100,
                  double.infinity,
                  Axis.horizontal,
                  0.1),
            );
          },
        ),
      ),
    );
  });
}

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
                    .openAWeb("https://github.com/Andresit0/Slidable_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('Slidable',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              height: size * 80,
              width: double.infinity,
              child: horizontalListExample(primaryColor, secundaryColor),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('main.dart',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Variables used to create the slidable widget',
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
                        Clipboard.setData(ClipboardData(text: code.mainCode))),
              ),
            ),
            Container(
              child: SelectableText(
                code.mainCode,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('slidable.dart',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Slidable widget that should contains a MainWidget() and could contains LeftWidget() and RightWidget()',
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
                        ClipboardData(text: code.slidableCode))),
              ),
            ),
            Container(
              child: SelectableText(
                code.slidableCode,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('widgetMain.dart',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Example of the mainWidget()',
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
                        ClipboardData(text: code.widgetMainCode))),
              ),
            ),
            Container(
              child: SelectableText(
                code.widgetMainCode,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('widgetLeftRight.dart',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Icons widget ubicated left or right. LeftWidget() and RightWidget()',
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
                        ClipboardData(text: code.widgetLeftRightCode))),
              ),
            ),
            Container(
              child: SelectableText(
                code.widgetLeftRightCode,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('widgetMainText.dart',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Widget of text used inside the mainWidget()',
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
                        ClipboardData(text: code.widgetMainTextCode))),
              ),
            ),
            Container(
              child: SelectableText(
                code.widgetMainTextCode,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
