import 'dart:async';
import 'package:flutter/material.dart';
import 'navigationIconRail.dart' as navigationIcon;
import 'editBtnIcon.dart' as editBtnIcon;
import 'editBtnText.dart' as editBtnText;
import 'editBtnIconLTextR.dart' as editBtnIconLTextR;
import 'editBtnIconUTextD.dart' as editBtnIconUTextD;
import 'editBtnTextLIconR.dart' as editBtnTextLIconR;
import 'editBtnTextUIconD.dart' as editBtnTextUIconD;
import 'code.dart' as code;
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/flutterTutorial/button/rail/learn.dart' as learn;
import '/ui/global/btn.dart' as globalBtn;
import 'package:flutter/services.dart';

List<String> listBtnCode = [
  code.btnText,
  code.btnIcon,
  code.btnIconLTextR,
  code.btnIconUTextD,
  code.btnTextLIconR,
  code.btnTextUIconD
];

StreamController<int> btnSelectedStream = StreamController.broadcast();
int btnSelectedInt = 0;

Widget page0(double size, BuildContext context) {
  return StreamBuilder(
      initialData: btnSelectedInt,
      stream: btnSelectedStream.stream,
      builder: (_, AsyncSnapshot snapshot) {
        if (btnSelectedInt == 0) {
          return Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: editBtnText.btnText(context),
            ),
          );
        } else if (btnSelectedInt == 1) {
          return Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: editBtnIcon.btnIcon(context),
            ),
          );
        } else if (btnSelectedInt == 2) {
          return Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: editBtnIconLTextR.editBtnIconLTextR(context),
            ),
          );
        } else if (btnSelectedInt == 3) {
          return Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: editBtnIconUTextD.editBtnIconLTextR(context),
            ),
          );
        } else if (btnSelectedInt == 4) {
          return Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: editBtnTextLIconR.editBtnIconLTextR(context),
            ),
          );
        } else if (btnSelectedInt == 5) {
          return Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: editBtnTextUIconD.editBtnIconLTextR(context),
            ),
          );
        }
        return Container();
      });
}

Widget page1(double size, BuildContext context) {
  return StreamBuilder(
      initialData: btnSelectedInt,
      stream: btnSelectedStream.stream,
      builder: (_, AsyncSnapshot snapshot) {
        return Expanded(
          child: Container(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          () => Clipboard.setData(ClipboardData(
                              text: listBtnCode[btnSelectedInt]))),
                    ),
                  ),
                  Container(
                    child: SelectableText(
                      listBtnCode[btnSelectedInt],
                      style: TextStyle(fontSize: size * 3),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

Widget page2(double size, BuildContext context) {
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
        } else if (snapshot.data == 2) {
          finalPage = page2(size() * 10, context);
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
