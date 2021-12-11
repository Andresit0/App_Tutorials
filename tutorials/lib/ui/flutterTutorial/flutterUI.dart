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
import 'encrypt/encrypt.dart' as encrypt;
import 'notification/notification.dart' as notification;
import 'publishApp/publishApp.dart' as publishApp;
import 'latex/latex.dart' as latex;
import 'streamcontroller/streamcontroller.dart' as streamController;
import 'rive/rive.dart' as rive;

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

    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: globalFont.strDeveloperBody(
              'Flutter',
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
                  child: globalFont.strDeveloperBody('Templates', false,
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
                                'Buttons',
                                Colors.black,
                                size() * 3.5,
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Color', Colors.black,
                                size() * 3.5, TextAlign.center), () {
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Countdown Timer',
                                Colors.black,
                                size() * 2.8,
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Dialog', Colors.black,
                                size() * 3.5, TextAlign.center), () {
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Encrypt',
                                Colors.black,
                                size() * 3.5,
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Font', Colors.black,
                                size() * 3.5, TextAlign.center), () {
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Form', Colors.black,
                                size() * 3.5, TextAlign.center), () {
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Latex', Colors.black,
                                size() * 3.5, TextAlign.center), () {
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Notification',
                                Colors.black,
                                size() * 2.8,
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Reorder',
                                Colors.black,
                                size() * 3.5,
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Rive', Colors.black,
                                size() * 3.5, TextAlign.center), () {
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Page \n View',
                                Colors.black,
                                size() * 3.5,
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Publish \n App',
                                Colors.black,
                                size() * 3.5,
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Slidable',
                                Colors.black,
                                size() * 3.5,
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial('Speak', Colors.black,
                                size() * 3.5, TextAlign.center), () {
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Streamcontroller',
                                Colors.black,
                                size() * 3.5,
                                TextAlign.center), () {
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
                        width: 70,
                        height: 70,
                        child: globalBtn.btnText(
                            Colors.transparent,
                            colorPrimary,
                            15,
                            1,
                            colorPrimary,
                            globalFont.titleIconTutorial(
                                'Write \n Read',
                                Colors.black,
                                size() * 3.5,
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
