import 'dart:async';
import 'package:flutter/material.dart';
import 'navigationIconRail.dart' as navigationIcon;
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/flutterTutorial/font/rail/learn.dart' as learn;
import '/ui/flutterTutorial/font/rail/code.dart' as code;
import '/ui/global/btn.dart' as globalBtn;
import 'package:flutter/services.dart';

List<String> listBtnCode = [
  code.strTitleIcon,
  code.strTitleDialog,
  code.strTitleLogin,
  code.strButton,
  code.strTitleTable,
  code.strContentTable,
  code.strAdvice,
  code.strTitleBlock,
  code.strTitleSmallForBlock,
  code.strParagraphBlock,
];

StreamController<int> btnSelectedStream = StreamController.broadcast();
int btnSelectedInt = 0;
TextEditingController controllerSearchProduct = new TextEditingController();
StreamController<String> stringText = StreamController.broadcast();

Widget page0(double size, BuildContext context) {
  return StreamBuilder(
      initialData: btnSelectedInt,
      stream: btnSelectedStream.stream,
      builder: (_, AsyncSnapshot snapshot) {
        return Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Container(
                      child: globalBtn.btnIconCircle(
                          size * 12,
                          size * 7,
                          false,
                          Colors.black,
                          Icons.copy_all,
                          context,
                          () => Clipboard.setData(ClipboardData(
                              text: listBtnCode[btnSelectedInt]))),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    height: 40,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: controllerSearchProduct,
                      onChanged: (value) {
                        stringText.add(value);
                      },
                      decoration: InputDecoration(
                          hintText: 'write a text',
                          border: InputBorder.none,
                          enabled: true,
                          hoverColor: Colors.black),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SelectableText(
                    listBtnCode[btnSelectedInt],
                    style: TextStyle(fontSize: size * 3),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

Widget page1(double size, BuildContext context) {
  return Expanded(
    child: learn.learn(size, context),
  );
}

Widget pageShowed(BuildContext context) {
  Widget page = StreamBuilder(
      initialData: 0,
      stream: navigationIcon.selectedIndex.stream,
      builder: (_, AsyncSnapshot snapshot) {
        double screenConstWidth = (MediaQuery.of(context).size.width -
                MediaQuery.of(context).padding.left +
                MediaQuery.of(context).padding.right) /
            100;
        double screenConstHeight = (MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top +
                MediaQuery.of(context).padding.bottom) /
            100;

        double size() {
          double size = 0;
          if (screenConstHeight > screenConstWidth) {
            size = screenConstWidth;
          } else {
            size = screenConstHeight;
          }
          if (isWeb.kIsWeb) size = size / 1.5;
          return size;
        }

        Widget finalPage = Container();

        if (snapshot.data == 0) {
          finalPage = page0(size(), context);
        } else if (snapshot.data == 1) {
          finalPage = page1(size(), context);
        }
        return finalPage;
      });
  return page;
}

Widget navigationPage(BuildContext context) {
  return Container(
    child: Row(
      children: <Widget>[
        navigationIcon.rail(),
        VerticalDivider(thickness: 1, width: 1),
        pageShowed(context),
      ],
    ),
  );
}
