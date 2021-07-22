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
