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
                globalFunc.openAWeb(
                    "https://github.com/Andresit0/Write_Read_File_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('Read and Write a File',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              width: size * 200,
              child: Image(
                image: AssetImage(globalVar.imgFlutterWriteRead),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Write and Read Data into a File',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Write new data and erase old data into a file',
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
                        Clipboard.setData(ClipboardData(text: code.writeData))),
              ),
            ),
            Container(
              child: SelectableText(
                code.writeData,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Read Data as List',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('String needs be separated by ;',
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
                        ClipboardData(text: code.readDataList))),
              ),
            ),
            Container(
              child: SelectableText(
                code.readDataList,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock(
                  'Write in the final of the document separated with a \";\" symbol',
                  Theme.of(context).primaryColor,
                  size * 6,
                  TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'The symbol \";\" to separate each String',
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
                        ClipboardData(text: code.writeDataList))),
              ),
            ),
            Container(
              child: SelectableText(
                code.writeDataList,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Refresh Data',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Reload data', Colors.black, size * 4, TextAlign.start),
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
                        ClipboardData(text: code.refreshData))),
              ),
            ),
            Container(
              child: SelectableText(
                code.refreshData,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Start App Reading a FileText',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'readDataNow() used to start the app',
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
              child: globalFont.titleBlock('Write Read Code',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('writeReadData.dart',
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
