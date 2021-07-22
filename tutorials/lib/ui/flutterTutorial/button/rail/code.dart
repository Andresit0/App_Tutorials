String btnText = '''  
Widget btnText(Color btnBackground, Color clickColor, double borderRadius,
    double borderWidth, Color borderColor, Widget text, Function onPressed) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: btnBackground,
      primary: clickColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor, width: borderWidth)),
    ),
    onPressed: () => onPressed(),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          text,
        ],
      ),
    ),
  );
}
''';

String btnIcon = '''  
Widget btnIcon(
    Color btnBackground,
    Color clickColor,
    Color iconColor,
    double iconSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    IconData btnIcon,
    Function onPressed) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: btnBackground,
      primary: clickColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor, width: borderWidth)),
    ),
    onPressed: () => onPressed(),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              btnIcon,
              color: iconColor,
              size: iconSize,
            ),
          ),
        ],
      ),
    ),
  );
}
''';

String btnIconLTextR = '''
Widget btnIconLTextR(
    Color btnBackground,
    EdgeInsets paddingBetweenIconText,
    Color clickColor,
    Color iconColor,
    double iconSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    IconData btnIcon,
    Widget text,
    Function onPressed) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: btnBackground,
      primary: clickColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor, width: borderWidth)),
    ),
    onPressed: () => onPressed(),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              btnIcon,
              color: iconColor,
              size: iconSize,
            ),
          ),
          Padding(
            padding: paddingBetweenIconText,
          ),
          text
        ],
      ),
    ),
  );
}
''';

String btnIconUTextD = '''
Widget btnIconUTextD(
    Color btnBackground,
    EdgeInsets paddingBetweenIconText,
    Color clickColor,
    Color iconColor,
    double iconSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    IconData btnIcon,
    Widget text,
    Function onPressed) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: btnBackground,
      primary: clickColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor, width: borderWidth)),
    ),
    onPressed: () => onPressed(),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              btnIcon,
              color: iconColor,
              size: iconSize,
            ),
          ),
          Padding(
            padding: paddingBetweenIconText,
          ),
          text
        ],
      ),
    ),
  );
}
''';

String btnTextLIconR = '''
Widget btnTextLIconR(
    Color btnBackground,
    EdgeInsets paddingBetweenIconText,
    Color clickColor,
    Color iconColor,
    double iconSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    IconData btnIcon,
    Widget text,
    Function onPressed) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: btnBackground,
      primary: clickColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor, width: borderWidth)),
    ),
    onPressed: () => onPressed(),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          text,
          Padding(
            padding: paddingBetweenIconText,
          ),
          Container(
            child: Icon(
              btnIcon,
              color: iconColor,
              size: iconSize,
            ),
          ),
        ],
      ),
    ),
  );
}
''';

String btnTextUIconD = '''
Widget btnTextUIconD(
    Color btnBackground,
    EdgeInsets paddingBetweenIconText,
    Color clickColor,
    Color iconColor,
    double iconSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    IconData btnIcon,
    Widget text,
    Function onPressed) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: btnBackground,
      primary: clickColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor, width: borderWidth)),
    ),
    onPressed: () => onPressed(),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          text,
          Padding(
            padding: paddingBetweenIconText,
          ),
          Container(
            child: Icon(
              btnIcon,
              color: iconColor,
              size: iconSize,
            ),
          ),
        ],
      ),
    ),
  );
}

''';
