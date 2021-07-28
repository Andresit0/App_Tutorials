import 'package:flutter/material.dart';

Widget widgetMain_1(Widget widgetText) {
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text(
              'title',
            ),
          ),
        ),
      ],
    ),
  );
}

Widget widgetMain_2(
    Widget widgetText, Color primaryColor, Color secundaryColor) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Container(
      padding: EdgeInsets.all(10),
      child: widgetText,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primaryColor,
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: secundaryColor,
    ),
  );
}
