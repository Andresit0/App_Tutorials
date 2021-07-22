import 'package:flutter/material.dart';

Widget header(BuildContext context, Widget title, Color colorClose) {
  return StatefulBuilder(builder: (context, setState) {
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
  });
}

Widget bodyInf(double dialogHeight, double dialogWidth, Widget body) {
  return Container(
    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    height: dialogHeight,
    width: dialogWidth,
    child: body,
  );
}

void dialogHeaderBodyFooter(
    BuildContext context,
    Color colorHeaderBackground,
    Widget title,
    Color colorClose,
    Widget body,
    List<Widget> inferiorButtons,
    double dialogHeight,
    double dialogWidth) {
  showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            actionsPadding: EdgeInsets.all(0),
            titlePadding: EdgeInsets.all(0),
            buttonPadding: EdgeInsets.all(0),
            insetPadding: EdgeInsets.all(0),
            title: Container(
              color: colorHeaderBackground,
              child: header(context, title, colorClose),
            ),
            content: Builder(
              builder: (context) {
                return bodyInf(dialogHeight, dialogWidth, body);
              },
            ),
            actions: inferiorButtons,
          );
        });
      });
}
