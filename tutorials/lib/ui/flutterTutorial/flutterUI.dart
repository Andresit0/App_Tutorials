import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/global/clr.dart' as globalClr;
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import 'button/button.dart' as button;
import 'dialog/dialog.dart' as dialog;
import 'font/font.dart' as font;
import 'color/color.dart' as color;
import 'countdown/countDown.dart' as countdown;
import 'speak/speak.dart' as speak;
import 'form/form.dart' as form;
import 'reorderable/reorderable.dart' as reorderable;
import 'writeRead/writeRead.dart' as writeRead;
import 'slidable/slidable.dart' as slidable;
import 'pageView/pageView.dart' as pageView;
import 'pdf/pdf.dart' as pdf;
import 'encrypt/encrypt.dart' as encrypt;
import 'notification/notification.dart' as notification;
import 'publishApp/publishApp.dart' as publishApp;
import 'latex/latex.dart' as latex;
import 'streamcontroller/streamcontroller.dart' as streamController;
import 'rive/rive.dart' as rive;
import 'imageSendApache/imageToApache.dart' as imgToApach;

class FlutterUI extends StatefulWidget {
  FlutterUI({Key? key}) : super(key: key);
  @override
  FlutterUIPageState createState() => FlutterUIPageState();
}

class FlutterUIPageState extends State<FlutterUI> {
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
              'Flutter',
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
                                'Buttons',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Container(child: button.Button()),
                            ),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Color', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Container(child: color.Colors()),
                            ),
                          );
                        }),
                      ),
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
                                'Countdown Timer',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Container(child: countdown.Countdown()),
                            ),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Dialog', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Container(child: dialog.Dialog()),
                            ),
                          );
                        }),
                      ),
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
                                'Encrypt',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Container(child: encrypt.Encrypt()),
                            ),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Font', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Container(child: font.Font()),
                            ),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Form', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: form.Form(),
                                    )),
                          );
                        }),
                      ),
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
                                'Image to Apache',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: imgToApach.ImageToApache(),
                                    )),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Latex', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: latex.Latex(),
                                    )),
                          );
                        }),
                      ),
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
                                'Notification',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: notification.Notification(),
                                    )),
                          );
                        }),
                      ),
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
                                'Reorder',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: reorderable.Reorderable(),
                                    )),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Rive', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: rive.Rive(),
                                    )),
                          );
                        }),
                      ),
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
                                'Page \n View',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: pageView.PageView(),
                                    )),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('PDF', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: pdf.Pdf(),
                                    )),
                          );
                        }),
                      ),
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
                                'Publish \n App',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: publishApp.PublishApp(),
                                    )),
                          );
                        }),
                      ),
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
                                'Slidable',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: slidable.Slidable(),
                                    )),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Speak', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: speak.Speak(),
                                    )),
                          );
                        }),
                      ),
                      Container(
                        width: widthButton,
                        height: heightButton,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Stream', Colors.black,
                                letterSize, TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child:
                                          streamController.Streamcontroller(),
                                    )),
                          );
                        }),
                      ),
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
                                'Write \n Read',
                                Colors.black,
                                letterSize,
                                TextAlign.center), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Container(
                                      child: writeRead.WriteRead(),
                                    )),
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
