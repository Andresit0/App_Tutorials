import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/global/clr.dart' as globalClr;
import '/ui/global/font.dart' as globalFont;
import 'latex.dart' as latex;

class TutorialPDF extends StatefulWidget {
  TutorialPDF({Key? key}) : super(key: key);
  @override
  TutorialPDFPageState createState() => TutorialPDFPageState();
}

class TutorialPDFPageState extends State<TutorialPDF> {
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
              'Postgres Tutorial',
              false,
              globalClr.colorPrimaryTextIcon(colorPrimary),
              size() * 8,
              TextAlign.center),
        ),
      ),
      body: latex.TeXViewDocumentExamples(),
    );
  }
}
