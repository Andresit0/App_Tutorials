import 'package:flutter/material.dart';
import '/ui/andresRiofrio/andresRiofrioUI.dart';
import '/ui/global/clr.dart' as globalClr;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MaterialColor>(
        initialData: globalClr.initialAppColor,
        stream: globalClr.colorAppStream.stream,
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Andrés Riofrío Valdivieso Tutorials',
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: snapshot.data,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child: AndresRiofrio()),
      ),
    );
  }
}
