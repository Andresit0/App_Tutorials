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
      controller: slidableController,
      direction: axis,
      actionPane: SlidableScrollActionPane(),
      actionExtentRatio:
          actionExtentRatio, //left & right widget size. Sum of widget (widgetLeft * actionExtentRatio < 1 & > 0) & (widgetRight * actionExtentRatio < 1 & > 0)
      child: widgetMain,
      actions: widgetLeft,
      secondaryActions: widgetRight,
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
      controller: slidableController,
      direction: axis,
      actionPane: SlidableScrollActionPane(),
      actionExtentRatio:
          actionExtentRatio, //left & right widget size. Sum of widget (widgetLeft * actionExtentRatio < 1 & > 0) & (widgetRight * actionExtentRatio < 1 & > 0)
      child: widgetMain,
      actions: widgetLeft,
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
      controller: slidableController,
      direction: axis,
      actionPane: SlidableScrollActionPane(),
      actionExtentRatio:
          actionExtentRatio, //left & right widget size. Sum of widget (widgetLeft * actionExtentRatio < 1 & > 0) & (widgetRight * actionExtentRatio < 1 & > 0)
      child: widgetMain,
      actions: widgetLeft,
    ),
  );
}
