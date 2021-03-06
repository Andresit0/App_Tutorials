String mainValue = '''
import 'clr.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MaterialColor>(
        initialData: Colors.blue,
        stream: colorAppStream.stream,
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'FACTEC',
            theme: ThemeData(
              primarySwatch: snapshot.data,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: MyHomePage(title: 'Flutter Change Color'),
          );
        });
  }
}
''';

String clrValue = '''
import 'dart:async';
import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(0, 0, 0, .1),
  100: Color.fromRGBO(0, 0, 0, .2),
  200: Color.fromRGBO(0, 0, 0, .3),
  300: Color.fromRGBO(0, 0, 0, .4),
  400: Color.fromRGBO(0, 0, 0, .5),
  500: Color.fromRGBO(0, 0, 0, .6),
  600: Color.fromRGBO(0, 0, 0, .7),
  700: Color.fromRGBO(0, 0, 0, .8),
  800: Color.fromRGBO(0, 0, 0, .9),
  900: Color.fromRGBO(0, 0, 0, 1),
};

Brightness estimateBrightnessForColor(Color color) {
  final double relativeLuminance = color.computeLuminance();
  const double kThreshold = 0.15;
  if ((relativeLuminance + 0.05) * (relativeLuminance + 0.05) > kThreshold)
    return Brightness.light;
  return Brightness.dark;
}

Color colorPrimaryTextIcon(Color color) {
  return estimateBrightnessForColor(color) == Brightness.dark
      ? Colors.white
      : Colors.black;
}

MaterialColor colorBlack = MaterialColor(0xFF000000, color);
MaterialColor colorWhite = MaterialColor(0x00000000, color);
StreamController<MaterialColor> colorAppStream = StreamController.broadcast();
MaterialColor initialAppColor = colorBlack;
''';

String listBtnAppColorValue = '''
import 'dart:async';
import 'package:flutter/material.dart';
import 'clr.dart' as globalClr;

// SPECIFIC WIDGET COLOR
Widget buttonToChangeSpecificColor(double iconSize, MaterialColor newColor,
    StreamController<MaterialColor> streamColor) {
  return Container(
    width: iconSize,
    height: iconSize,
    child: TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(360),
            side: BorderSide(color: Colors.black, width: 1)),
      ),
      onPressed: () {
        streamColor.add(newColor);
      },
      child: Icon(
        Icons.color_lens,
        color: newColor,
      ),
    ),
  );
}

Widget listSpecificColorButton(
    double iconSize, StreamController<MaterialColor> streamColor) {
  return Container(
    height: iconSize,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        buttonToChangeSpecificColor(
            iconSize, globalClr.colorWhite, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.pink, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.orange, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.yellow, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.blue, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.red, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.green, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.cyan, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.purple, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(iconSize, Colors.grey, streamColor),
        Padding(padding: EdgeInsets.only(left: 5)),
        buttonToChangeSpecificColor(
            iconSize, globalClr.colorBlack, streamColor),
      ],
    ),
  );
}

// GLOBAL WIDGET COLOR
Widget buttonToChangeColor(MaterialColor newColor) {
  return IconButton(
    splashRadius: 1,
    iconSize: 200,
    icon: Icon(
      Icons.color_lens,
      color: newColor,
    ),
    onPressed: () {
      globalClr.colorAppStream.add(newColor);
    },
  );
}

Widget listColorButton() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        buttonToChangeColor(Colors.pink),
        buttonToChangeColor(Colors.orange),
        buttonToChangeColor(Colors.yellow),
        buttonToChangeColor(Colors.blue),
        buttonToChangeColor(Colors.red),
        buttonToChangeColor(Colors.green),
        buttonToChangeColor(Colors.cyan),
        buttonToChangeColor(Colors.purple),
        buttonToChangeColor(Colors.grey),
        buttonToChangeColor(globalClr.colorBlack),
      ],
    ),
  );
}
''';
