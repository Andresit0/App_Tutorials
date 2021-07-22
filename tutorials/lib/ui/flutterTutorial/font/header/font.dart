import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget strTitleIcon(
    String strText, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    strText,
    textAlign: textAlign,
    style: GoogleFonts.abrilFatface(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        letterSpacing: 5,
      ),
    ),
  );
}

Widget strTitleDialog(
    String strText, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    strText,
    textAlign: textAlign,
    style: GoogleFonts.alata(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        letterSpacing: 3,
      ),
    ),
  );
}

Widget strTitleLogin(
    String strText, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    strText,
    textAlign: textAlign,
    style: GoogleFonts.blackOpsOne(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        letterSpacing: 3,
      ),
    ),
  );
}

Widget strButtons(
    String strText, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    strText,
    textAlign: textAlign,
    style: GoogleFonts.crimsonPro(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        letterSpacing: 1,
      ),
    ),
  );
}

Widget strTitleTable(
    String strText, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    strText,
    textAlign: textAlign,
    style: GoogleFonts.heebo(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        letterSpacing: 1,
      ),
    ),
  );
}

Widget strContentTable(
    String strText, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    strText,
    textAlign: textAlign,
    style: GoogleFonts.lora(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: fontSize,
        letterSpacing: 1,
      ),
    ),
  );
}

Widget strAdvice(
    String strText, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    strText,
    textAlign: textAlign,
    style: GoogleFonts.kronaOne(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: fontSize,
        letterSpacing: 1,
      ),
    ),
  );
}

Widget titleBlock(
    String h1Text, Color color, double fontSize, TextAlign textAlign) {
  return Text(
    h1Text,
    textAlign: textAlign,
    style: GoogleFonts.italiana(
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
    style: GoogleFonts.montserrat(
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
    style: GoogleFonts.mulish(
      textStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: fontSize,
      ),
    ),
  );
}
