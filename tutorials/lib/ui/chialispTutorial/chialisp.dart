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

    double widthHeightButton = size() * 65;
    double letterSize = size() * 10;
    double subtitleSize = size() * 14;
    if (screenConstHeight > screenConstWidth) {
      widthHeightButton = size() * 39;
      letterSize = size() * 6;
      subtitleSize = size() * 10;
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: isWeb.kIsWeb ? false : true,
        title: Container(
          width: double.infinity,
          child: globalFont.strDeveloperBody(
              'Chialisp',
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
                  child: globalFont.strDeveloperBody('Tutorial', false,
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
                        width: widthHeightButton,
                        height: widthHeightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Basic Info',
                                Colors.black,
                                letterSize,
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
