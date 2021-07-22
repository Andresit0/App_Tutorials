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
