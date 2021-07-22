import 'package:flutter/material.dart';
import 'clr.dart';

Widget headerInf(BuildContext context, Widget title, Color colorClose) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(padding: EdgeInsets.only(left: 15)),
      Expanded(
        child: title,
      ),
      Container(
        alignment: Alignment.centerRight,
        child: IconButton(
          icon: Icon(
            Icons.cancel_outlined,
            color: colorClose,
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ),
    ],
  );
}

Widget bodyInf(double dialogHeight, double dialogWidth, Widget body) {
  return Container(
    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    height: dialogHeight,
    width: dialogWidth,
    child: body,
  );
}

void dialogHeaderBodyFooter(
    BuildContext contextBuild,
    bool useLightTheme,
    Color colorHeaderBackground,
    Widget title,
    Color colorClose,
    Widget body,
    List<Widget> footerInf,
    double dialogHeight,
    double dialogWidth) {
  showDialog(
      context: contextBuild,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          actionsPadding: EdgeInsets.all(0),
          titlePadding: EdgeInsets.all(0),
          buttonPadding: EdgeInsets.all(0),
          insetPadding: EdgeInsets.all(0),
          title: Container(
            color: useLightTheme
                ? Theme.of(context).primaryColor
                : colorHeaderBackground,
            child: headerInf(context, title,
                colorPrimaryTextIcon(Theme.of(context).primaryColor)),
          ),
          content: bodyInf(dialogHeight, dialogWidth, body),
          actions: footerInf,
        );
      });
}
