import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/global/clr.dart' as globalClr;
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import 'tutorial/tutorialAlgebra/tutorial.dart' as tutorialLatex;
import 'tutorial/division/division.dart' as division;

class PostgresUI extends StatefulWidget {
  PostgresUI({Key? key}) : super(key: key);
  @override
  PostgresUIPageState createState() => PostgresUIPageState();
}

class PostgresUIPageState extends State<PostgresUI> {
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
      if (isWeb.kIsWeb) size = size / 1.7;
      return size;
    }

    double widthButton = 0;
    double heightButton = 0;
    double letterSize = 0;
    double subtitleSize = 0;
    if (screenConstHeight > screenConstWidth) {
      widthButton = size() * 50;
      heightButton = size() * 20;
      letterSize = size() * 6;
      subtitleSize = size() * 8;
    } else {
      widthButton = size() * 55;
      heightButton = size() * 25;
      letterSize = size() * 8;
      subtitleSize = size() * 8;
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: isWeb.kIsWeb ? false : true,
        title: Container(
          width: double.infinity,
          child: globalFont.strDeveloperBody(
              'Postgres',
              false,
              globalClr.colorPrimaryTextIcon(colorPrimary),
              30,
              TextAlign.center),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  child: globalFont.strDeveloperBody('Tutorials', false,
                      Colors.black, subtitleSize, TextAlign.center),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Container(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Optimization',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Container(
                                child: tutorialLatex.TutorialPDF(),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  child: globalFont.strDeveloperBody('Templates', false,
                      Colors.black, subtitleSize, TextAlign.center),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Container(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Division',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Container(
                                child: division.DivisionPostgres(),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
