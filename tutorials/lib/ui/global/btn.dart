import 'package:flutter/material.dart';
import 'clr.dart' as globalClr;

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

Widget btnIcon(
    Color btnBackground,
    Color clickColor,
    Color iconColor,
    double iconSize,
    double borderRadius,
    double borderWidth,
    bool iconBoolBorderColorDyn,
    Color borderColor,
    IconData btnIcon,
    Function onPressed) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: btnBackground,
      primary: clickColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: Colors.transparent, width: borderWidth)),
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

Widget btnIconCircle(
    double circleSize,
    double iconSize,
    bool iconBoolBorderColor,
    Color iconBorderColor,
    IconData icon,
    BuildContext context,
    Function onPressed) {
  return StreamBuilder(
      initialData: globalClr.initialAppColor,
      builder: (context, AsyncSnapshot snapshot) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: circleSize,
                height: circleSize,
                child: btnIcon(
                    Colors.white,
                    Theme.of(context).primaryColor,
                    Colors.black,
                    iconSize,
                    360,
                    circleSize,
                    iconBoolBorderColor,
                    iconBoolBorderColor
                        ? Theme.of(context).primaryColor
                        : iconBorderColor,
                    icon,
                    onPressed),
              ),
            ],
          ),
        );
      });
}

Widget btnImgUTextD(
    Color btnBackground,
    EdgeInsets paddingBetweenIconText,
    Color clickColor,
    double imgSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    String btnImg,
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
              child: Image(
            image: AssetImage(btnImg),
          )),
          Padding(
            padding: paddingBetweenIconText,
          ),
          text
        ],
      ),
    ),
  );
}

Widget btnImgLTextR(
    Color btnBackground,
    EdgeInsets paddingBetweenIconText,
    Color clickColor,
    double imgSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    String btnImg,
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
              child: Image(
            image: AssetImage(btnImg),
          )),
          Padding(
            padding: paddingBetweenIconText,
          ),
          text
        ],
      ),
    ),
  );
}

Widget btnTextLImgR(
    Color btnBackground,
    EdgeInsets paddingBetweenIconText,
    Color clickColor,
    double imgSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    String btnImg,
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
              child: Image(
            image: AssetImage(btnImg),
          )),
        ],
      ),
    ),
  );
}

Widget btnTextUImgD(
    Color btnBackground,
    EdgeInsets paddingBetweenIconText,
    Color clickColor,
    double imgSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    String btnImg,
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
              child: Image(
            image: AssetImage(btnImg),
          )),
        ],
      ),
    ),
  );
}

Widget btnImg(
    Color btnBackground,
    Color clickColor,
    double imgSize,
    double borderRadius,
    double borderWidth,
    Color borderColor,
    String btnImg,
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
        width: imgSize,
        height: imgSize,
        child: Image(
          image: AssetImage(btnImg),
        )),
  );
}
