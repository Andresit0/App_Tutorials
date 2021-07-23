import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/global/clr.dart' as globalClr;
import '/ui/global/font.dart' as globalFont;
import 'learn.dart' as learn;
import '/ui/global/speak.dart' as globalSpeak;

class Speak extends StatefulWidget {
  Speak({Key? key}) : super(key: key);
  @override
  SpeakPageState createState() => SpeakPageState();
}

class SpeakPageState extends State<Speak> {
  @override
  initState() {
    super.initState();
    globalSpeak.initTts();
  }

  @override
  void dispose() {
    super.dispose();
    globalSpeak.flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    Color colorPrimary = Theme.of(context).primaryColor;
    double screenConstWidth = (MediaQuery.of(context).size.width -
            MediaQuery.of(context).padding.left +
            MediaQuery.of(context).padding.right) /
        100;
    double screenConstHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom) /
        100;

    double size() {
      double size = 0;
      if (screenConstHeight > screenConstWidth) {
        size = screenConstWidth;
      } else {
        size = screenConstHeight;
      }
      if (isWeb.kIsWeb) size = size / 1.5;
      return size;
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: globalFont.strDeveloperBody(
              'Speak',
              false,
              globalClr.colorPrimaryTextIcon(colorPrimary),
              size() * 8,
              TextAlign.center),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          learn.learn(size(), context),
        ],
      )),
    );
  }
}
