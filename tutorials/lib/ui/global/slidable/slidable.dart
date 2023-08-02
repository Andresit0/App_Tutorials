import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

Widget slidableLeftRight(
    SlidableController slidableController,
    Widget widgetMain,
    List<Widget> widgetLeft,
    List<Widget> widgetRight,
    double height,
    double width,
    Axis axis,
    double actionExtentRatio) {
  return Container(
    height: height,
    width: width,
    child: Slidable(
      direction:
          axis, //left & right widget size. Sum of widget (widgetLeft * actionExtentRatio < 1 & > 0) & (widgetRight * actionExtentRatio < 1 & > 0)
      child: widgetMain,
    ),
  );
}

Widget slidableLeft(
    SlidableController slidableController,
    Widget widgetMain,
    List<Widget> widgetLeft,
    double height,
    double width,
    Axis axis,
    double actionExtentRatio) {
  return Container(
    height: height,
    width: width,
    child: Slidable(
      direction:
          axis, //left & right widget size. Sum of widget (widgetLeft * actionExtentRatio < 1 & > 0) & (widgetRight * actionExtentRatio < 1 & > 0)
      child: widgetMain,
    ),
  );
}

Widget slidableRight(
    SlidableController slidableController,
    Widget widgetMain,
    List<Widget> widgetLeft,
    double height,
    double width,
    Axis axis,
    double actionExtentRatio) {
  return Container(
    height: height,
    width: width,
    child: Slidable(
      direction:
          axis, //left & right widget size. Sum of widget (widgetLeft * actionExtentRatio < 1 & > 0) & (widgetRight * actionExtentRatio < 1 & > 0)
      child: widgetMain,
    ),
  );
}
