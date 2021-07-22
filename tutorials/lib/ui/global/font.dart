import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' as googleFont;
import 'clr.dart' as globalClr;

Widget strTitleDialog(String str, bool colorDynamic, Color color,
    double fontSize, TextAlign textAlign) {
  return StreamBuilder(
      initialData: globalClr.initialAppColor,
      stream: globalClr.colorAppStream.stream,
      builder: (_, AsyncSnapshot snapshot) {
        return Text(
          str,
          textAlign: textAlign,
          style: googleFont.GoogleFonts.alata(
            textStyle: TextStyle(
              color: colorDynamic
                  ? globalClr.colorPrimaryTextIcon(snapshot.data)
                  : color,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              letterSpacing: 3,
            ),
          ),
        );
      });
}

Widget strDeveloperBody(String str, bool colorDynamic, Color color,
    double fontSize, TextAlign textAlign) {
  return StreamBuilder(
      initialData: globalClr.initialAppColor,
      stream: globalClr.colorAppStream.stream,
      builder: (_, AsyncSnapshot snapshot) {
        return Text(
          str,
          textAlign: textAlign,
          style: googleFont.GoogleFonts.novaCut(
            textStyle: TextStyle(
              color: colorDynamic
                  ? globalClr.colorPrimaryTextIcon(snapshot.data)
                  : color,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              letterSpacing: 3,
            ),
          ),
        );
      });
}

Widget strDeveloperName(String str, bool colorDynamic, Color color,
    double fontSize, TextAlign textAlign) {
  return StreamBuilder(
      initialData: globalClr.initialAppColor,
      stream: globalClr.colorAppStream.stream,
      builder: (_, AsyncSnapshot snapshot) {
        return Text(
          str,
          textAlign: textAlign,
          style: googleFont.GoogleFonts.clickerScript(
            textStyle: TextStyle(
              color: colorDynamic
                  ? globalClr.colorPrimaryTextIcon(snapshot.data)
                  : color,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              letterSpacing: 3,
            ),
          ),
        );
      });
}

Widget titleIconTutorial(
    String h1Text, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    h1Text,
    textAlign: textAlign,
    style: googleFont.GoogleFonts.raleway(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    ),
  );
}

Widget titleBlock(
    String h1Text, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    h1Text,
    textAlign: textAlign,
    style: googleFont.GoogleFonts.italiana(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    ),
  );
}

Widget titleSmallForBlock(
    String h1Text, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    h1Text,
    textAlign: textAlign,
    style: googleFont.GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: fontSize,
      ),
    ),
  );
}

Widget paragraphBlock(
    String h1Text, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    h1Text,
    textAlign: textAlign,
    style: googleFont.GoogleFonts.mulish(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: fontSize,
      ),
    ),
  );
}
