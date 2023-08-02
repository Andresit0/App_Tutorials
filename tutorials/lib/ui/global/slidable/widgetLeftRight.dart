import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart' as slidable;

List<Widget> widgetLeftRight_1(
    IconData icon, Color iconColor, Color bacgroundColor, Function function) {
  return <Widget>[
    slidable.SlidableAction(
      label: 'ICON 1',
      foregroundColor: iconColor,
      backgroundColor: bacgroundColor,
      icon: icon,
      onPressed: (context) => function(),
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
    slidable.SlidableAction(
      label: 'ICON 1',
      backgroundColor: iconColor1,
      icon: icon1,
      onPressed: (context) => function_1(),
    ),
    slidable.SlidableAction(
      label: 'ICON 2',
      backgroundColor: iconColor2,
      icon: icon2,
      onPressed: (context) => function_2(),
    ),
    slidable.SlidableAction(
      label: 'ICON 3',
      backgroundColor: iconColor3,
      icon: icon3,
      onPressed: (context) => function_3(),
    ),
  ];
}
