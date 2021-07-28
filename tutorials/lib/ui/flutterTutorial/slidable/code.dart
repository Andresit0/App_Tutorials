String mainCode = '''
late final SlidableController slidableController = SlidableController();
List<Widget> listWidget = [
    widgetText('TITLE 1'),
    widgetText('TITLE 2'),
    widgetText('TITLE 3'),
    widgetText('TITLE 4')
];
body: slidableLeftRight(...);
''';

String slidableCode = '''
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
''';

String widgetMainCode = '''
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
''';

String widgetLeftRightCode = '''
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
''';

String widgetMainTextCode = '''
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
''';
