import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

List<Widget> widgetLeftRight_1(
    IconData icon, Color iconColor, Color bacgroundColor, Function function) {
  return <Widget>[
    IconSlideAction(
      caption: 'ICON 1',
      foregroundColor: iconColor,
      color: bacgroundColor,
      icon: icon,
      onTap: () => function(),
    ),
  ];
}

List<Widget> widgetLeftRight_2(
    IconData icon1,
    Color iconColor1,
    IconData icon2,
    Color iconColor2,
    IconData icon3,
    Color iconColor3,
    Color bacgroundColor,
    Function function_1,
    Function function_2,
    Function function_3) {
  return <Widget>[
    IconSlideAction(
      caption: 'ICON 1',
      color: iconColor1,
      icon: icon1,
      onTap: () => function_1(),
    ),
    IconSlideAction(
      caption: 'ICON 2',
      color: iconColor2,
      icon: icon2,
      onTap: () => function_2(),
    ),
    IconSlideAction(
      caption: 'ICON 3',
      color: iconColor3,
      icon: icon3,
      onTap: () => function_3(),
    ),
  ];
}
