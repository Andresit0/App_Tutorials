import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/ui/global/reorderableWidget.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/img/icon/icon_downloaded.dart' as iconDownloaded;
import 'code.dart' as code;

Widget learn(double size, BuildContext context) {
  late List<Widget> rows = [
    reorderableWidget(Text('widget 1', style: TextStyle(fontSize: size * 5))),
    reorderableWidget(Text('widget 2', style: TextStyle(fontSize: size * 5))),
    reorderableWidget(Text('widget 3', style: TextStyle(fontSize: size * 5))),
    reorderableWidget(Text('widget 4', style: TextStyle(fontSize: size * 5))),
    reorderableWidget(Text('widget 5', style: TextStyle(fontSize: size * 5))),
    reorderableWidget(Text('widget 6', style: TextStyle(fontSize: size * 5))),
    reorderableWidget(Text('widget 7', style: TextStyle(fontSize: size * 5))),
    reorderableWidget(Text('widget 8', style: TextStyle(fontSize: size * 5))),
    reorderableWidget(Text('widget 9', style: TextStyle(fontSize: size * 5))),
  ];
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
                globalFunc.openAWeb(
                    "https://github.com/Andresit0/Reorderable_Widget_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('Reorder Widgets',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              width: size * 20,
              child: showReorderableWidgetList(rows),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('reorderableWidget.dart',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'showReorderableWidgetList(rows) where rows is the list of widgets that could be moved by user',
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
                        ClipboardData(text: code.reorderable))),
              ),
            ),
            Container(
              child: SelectableText(
                code.reorderable,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
