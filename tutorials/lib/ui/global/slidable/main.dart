import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'widgetMainText.dart';
import 'clr.dart';
import 'widgetMain.dart';
import 'widgetLeftRight.dart';
import 'slidable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SLIDABLE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Slidable Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final SlidableController slidableController = SlidableController();
  List<Widget> listWidget = [
    widgetText('TITLE 1'),
    widgetText('TITLE 2'),
    widgetText('TITLE 3'),
    widgetText('TITLE 4')
  ];

  Widget verticalExample() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            slidableLeftRight(
                slidableController,
                widgetMain_1(widgetText('TITLE 1')),
                widgetLeftRight_1(
                    Icons.delete, Colors.white, primaryColor, () {}),
                widgetLeftRight_2(
                    Icons.alarm_off,
                    Colors.red,
                    Icons.alarm,
                    Colors.blue,
                    Icons.alarm_on,
                    Colors.green,
                    primaryColor,
                    () {},
                    () {},
                    () {}),
                double.infinity,
                100,
                Axis.vertical,
                0.1),
            slidableLeftRight(
                slidableController,
                widgetMain_1(widgetText('TITLE 1')),
                widgetLeftRight_1(
                    Icons.delete, Colors.white, primaryColor, () {}),
                widgetLeftRight_2(
                    Icons.alarm_off,
                    Colors.red,
                    Icons.alarm,
                    Colors.blue,
                    Icons.alarm_on,
                    Colors.green,
                    primaryColor,
                    () {},
                    () {},
                    () {}),
                double.infinity,
                100,
                Axis.vertical,
                0.1),
          ],
        ),
      ),
    );
  }

  Widget horizontalExample(Color primaryColor, Color secundaryColor) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            slidableLeftRight(
                slidableController,
                widgetMain_1(widgetText('TITLE 1')),
                widgetLeftRight_1(
                    Icons.delete, Colors.white, primaryColor, () {}),
                widgetLeftRight_2(
                    Icons.alarm_off,
                    Colors.red,
                    Icons.alarm,
                    Colors.blue,
                    Icons.alarm_on,
                    Colors.green,
                    primaryColor,
                    () {},
                    () {},
                    () {}),
                100,
                double.infinity,
                Axis.horizontal,
                0.1),
            slidableLeftRight(
                slidableController,
                widgetMain_1(widgetText('TITLE 1')),
                widgetLeftRight_1(
                    Icons.delete, Colors.white, primaryColor, () {}),
                widgetLeftRight_2(
                    Icons.alarm_off,
                    Colors.red,
                    Icons.alarm,
                    Colors.blue,
                    Icons.alarm_on,
                    Colors.green,
                    primaryColor,
                    () {},
                    () {},
                    () {}),
                100,
                double.infinity,
                Axis.horizontal,
                0.1),
          ],
        ),
      ),
    );
  }

  Widget horizontalListExample(Color primaryColor, Color secundaryColor) {
    return Container(
      color: primaryColor,
      padding: EdgeInsets.all(10),
      child: Container(
        child: ListView.builder(
          itemCount: listWidget.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              child: slidableLeft(
                  slidableController,
                  widgetMain_2(listWidget[index], primaryColor, secundaryColor),
                  widgetLeftRight_1(Icons.delete, Colors.white, primaryColor,
                      () {
                    setState(() {
                      listWidget.removeAt(index);
                    });
                  }),
                  100,
                  double.infinity,
                  Axis.horizontal,
                  0.1),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: secundaryColor,
      ),
      body: horizontalListExample(primaryColor, secundaryColor),
      //body: horizontalExample(primaryColor, secundaryColor),
      //body: verticalExample(),
    );
  }
}
