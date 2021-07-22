import 'package:flutter/material.dart';
import '/ui/flutterTutorial/font/header/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '../rail/navigationPage.dart' as navigationPage;

Widget font(double size, BuildContext context) {
  return Container(
    height: 80,
    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.strTitleIcon(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 0;
              navigationPage.btnSelectedStream.add(0);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.strTitleDialog(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 1;
              navigationPage.btnSelectedStream.add(1);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.strTitleLogin(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 2;
              navigationPage.btnSelectedStream.add(2);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.strButtons(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 3;
              navigationPage.btnSelectedStream.add(3);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.strTitleTable(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 4;
              navigationPage.btnSelectedStream.add(4);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.strContentTable(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 5;
              navigationPage.btnSelectedStream.add(5);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.strAdvice(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 6;
              navigationPage.btnSelectedStream.add(6);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.titleBlock(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 7;
              navigationPage.btnSelectedStream.add(7);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.titleSmallForBlock(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 8;
              navigationPage.btnSelectedStream.add(8);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          globalBtn.btnText(
            Colors.transparent,
            Theme.of(context).primaryColor,
            size * 4,
            1,
            Colors.black,
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StreamBuilder(
                  initialData: 'Your Text',
                  stream: navigationPage.stringText.stream,
                  builder: (_, AsyncSnapshot snapshot) {
                    return globalFont.paragraphBlock(
                        snapshot.data, Colors.black, 25, TextAlign.center);
                  }),
            ),
            () {
              navigationPage.btnSelectedInt = 9;
              navigationPage.btnSelectedStream.add(9);
            },
          ),
        ],
      ),
    ),
  );
}
