import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/global/clr.dart' as globalClr;
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import 'basicInformation/basicInformation.dart' as basicInformation;

class Chialisp extends StatefulWidget {
  Chialisp({Key? key}) : super(key: key);
  @override
  ChialispPageState createState() => ChialispPageState();
}

class ChialispPageState extends State<Chialisp> {
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

    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: globalFont.strDeveloperBody(
              'Postgres',
              false,
              globalClr.colorPrimaryTextIcon(colorPrimary),
              size() * 8,
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
                  child: globalFont.strDeveloperBody('Tutorial', false,
                      Colors.black, size() * 6, TextAlign.center),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Container(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Basic Info',
                                Colors.black,
                                size() * 3.5,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Container(
                                child: basicInformation.BasicInformation(),
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
