import 'package:flutter/material.dart';

Widget widgetText(String title) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Expanded(
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}
