String strTitleIcon = '''
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
''';

String strTitleDialog = '''
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
''';

String strTitleLogin = '''
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
''';

String strButton = '''
Widget strButton(
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
''';

String strTitleTable = '''
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
''';

String strContentTable = '''
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
''';

String strAdvice = '''
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
''';

String strTitleBlock = '''
Widget strTitleBlock(
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
''';

String strTitleSmallForBlock = '''
Widget strTitleSmallForBlock(
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
''';

String strParagraphBlock = '''
Widget strParagraphBlock(
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
''';
