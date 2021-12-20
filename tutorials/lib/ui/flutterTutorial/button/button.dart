import 'package:flutter/material.dart';
import 'header/btnHeader.dart' as btnEdit;
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/global/clr.dart' as globalClr;
import 'rail/navigationPage.dart' as navigationPage;
import '/ui/global/font.dart' as globalFont;

class Button extends StatefulWidget {
  Button({Key? key}) : super(key: key);
  @override
  ButtonPageState createState() => ButtonPageState();
}

class ButtonPageState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    Color colorPrimary = Theme.of(context).primaryColor;
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

    Widget listBtnVar(BuildContext context) {
      return Container(
        padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
        alignment: Alignment.center,
        width: double.infinity,
        height: 80,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              btnEdit.btnText(context),
              Padding(padding: EdgeInsets.only(left: size() * 2)),
              btnEdit.btnIcon(context),
              Padding(padding: EdgeInsets.only(left: size() * 2)),
              btnEdit.btnIconLTextR(context),
              Padding(padding: EdgeInsets.only(left: size() * 2)),
              btnEdit.btnIconUTextD(context),
              Padding(padding: EdgeInsets.only(left: size() * 2)),
              btnEdit.btnTextLIconR(context),
              Padding(padding: EdgeInsets.only(left: size() * 2)),
              btnEdit.btnTextUIconD(context),
              Padding(padding: EdgeInsets.only(left: size() * 2)),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: !isWeb.kIsWeb
          ? AppBar(
              title: Container(
                width: double.infinity,
                child: globalFont.strDeveloperBody(
                    'Buttons',
                    false,
                    globalClr.colorPrimaryTextIcon(colorPrimary),
                    size() * 8,
                    TextAlign.center),
              ),
            )
          : AppBar(
              toolbarHeight: 0,
            ),
      body: Container(
          child: Column(
        children: [
          Container(child: listBtnVar(context)),
          Divider(
            thickness: 1,
            indent: 0,
            endIndent: 0,
            height: 0,
          ),
          Expanded(child: navigationPage.navigationPage(context)),
        ],
      )),
    );
  }
}
