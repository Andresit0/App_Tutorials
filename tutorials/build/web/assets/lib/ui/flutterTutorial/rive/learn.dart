import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/img/icon/icon_downloaded.dart' as iconDownloaded;
import 'code.dart' as code;

Widget learn(double size, BuildContext context) {
  return StatefulBuilder(builder: (context, setState) {
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
                      .openAWeb("https://github.com/Andresit0/Rive_Flutter");
                }),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: globalFont.titleBlock('Dependencie:',
                    Theme.of(context).primaryColor, size * 6, TextAlign.start),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
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
                          ClipboardData(text: code.dependencie))),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: globalFont.paragraphBlock(
                    code.dependencie, Colors.black, size * 4, TextAlign.start),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                alignment: Alignment.topLeft,
                child: globalFont.titleBlock('Code to Change:',
                    Theme.of(context).primaryColor, size * 6, TextAlign.start),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
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
                          ClipboardData(text: code.codeToChange))),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: globalFont.paragraphBlock(
                    code.codeToChange, Colors.black, size * 4, TextAlign.start),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: globalFont.titleBlock('Rive Code:',
                    Theme.of(context).primaryColor, size * 6, TextAlign.start),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
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
                          ClipboardData(text: code.riveCode))),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: globalFont.paragraphBlock(
                    code.riveCode, Colors.black, size * 4, TextAlign.start),
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
            ],
          )),
    );
  });
}
