import 'package:flutter/material.dart';
import 'package:temp_btn_color_dialog_font/ui/chialispTutorial/chialisp.dart';
import 'package:temp_btn_color_dialog_font/ui/postgresTutorial/postgresUI.dart';
import 'dart:ui';
import '/ui/flutterTutorial/flutterUI.dart';
import '../global/func.dart' as globalFunc;
import '/ui/andresRiofrio/iconAppPublished.dart' as globalIcon;
import '/ui/img/icon/icon_downloaded.dart';
import '/ui/global/dialog.dart' as globalDlg;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/font.dart' as globalFont;
import '/ui/global/listBtnAppColor.dart' as globalListBtnClr;
import '/ui/global/var.dart' as globalVar;
import 'package:flutter/foundation.dart' as isWeb;

class AndresRiofrio extends StatefulWidget {
  AndresRiofrio({Key? key}) : super(key: key);
  @override
  AndresRiofrioPageState createState() => AndresRiofrioPageState();
}

class AndresRiofrioPageState extends State<AndresRiofrio> {
  @override
  Widget build(BuildContext context) {
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

    Widget presentationColumn() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: size() * 35,
              height: size() * 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(globalVar.imgAndres),
                    fit: BoxFit.fitHeight),
              ),
              child: Transform.translate(
                offset: Offset(0, size() * 1.5),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: size() * 200,
                    height: size() * 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        globalBtn.btnIconCircle(
                            size() * 11,
                            size() * 6,
                            false,
                            Colors.black,
                            IconDownloaded.github_circled,
                            context, () {
                          globalFunc.openAWeb("https://github.com/Andresit0");
                        }),
                        globalBtn.btnIconCircle(
                            size() * 11,
                            size() * 6,
                            false,
                            Colors.black,
                            IconDownloaded.stackoverflow,
                            context, () {
                          globalFunc.openAWeb(
                              "https://stackoverflow.com/users/11075752/andres-riofrio");
                        }),
                        globalBtn.btnIconCircle(size() * 11, size() * 6, false,
                            Colors.black, IconDownloaded.facebook, context, () {
                          globalFunc.openAWeb(
                              "https://www.facebook.com/profile.php?id=100075269015936");
                        }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            globalFont.strDeveloperName(
                'Andrés', false, Colors.white, size() * 4, TextAlign.center),
            globalFont.strDeveloperName('Riofrío-Valdivieso', false,
                Colors.white, size() * 4, TextAlign.center),
          ],
        ),
      );
    }

    Widget presentationRow() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: size() * 35,
              height: size() * 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(globalVar.imgAndres),
                    fit: BoxFit.fitHeight),
              ),
              child: Transform.translate(
                offset: Offset(0, size() * 1.5),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: size() * 200,
                    height: size() * 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        globalBtn.btnIconCircle(
                            size() * 11,
                            size() * 6,
                            false,
                            Colors.black,
                            IconDownloaded.github_circled,
                            context, () {
                          globalFunc.openAWeb("https://github.com/Andresit0");
                        }),
                        globalBtn.btnIconCircle(
                            size() * 11,
                            size() * 6,
                            false,
                            Colors.black,
                            IconDownloaded.stackoverflow,
                            context, () {
                          globalFunc.openAWeb(
                              "https://stackoverflow.com/users/11075752/andres-riofrio");
                        }),
                        globalBtn.btnIconCircle(size() * 11, size() * 6, false,
                            Colors.black, IconDownloaded.twitter, context, () {
                          globalFunc
                              .openAWeb("https://twitter.com/AndrsRiofro1");
                        }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: [
                globalFont.strDeveloperName('Andrés', false, Colors.white,
                    size() * 4, TextAlign.center),
                globalFont.strDeveloperName('Riofrío-Valdivieso', false,
                    Colors.white, size() * 4, TextAlign.center),
              ],
            ),
          ],
        ),
      );
    }

    Widget presentation() {
      if (screenConstHeight > screenConstWidth) return presentationRow();
      return Container(child: presentationColumn());
    }

    Widget information() {
      return Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Container(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: !isWeb.kIsWeb &&
                                  screenConstHeight < screenConstWidth
                              ? size() * 10
                              : 0)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: size() * 15,
                        height: size() * 15,
                        child: globalBtn.btnIcon(
                            Colors.transparent,
                            Colors.white,
                            Theme.of(context).primaryColor,
                            size() * 10,
                            360,
                            1,
                            false,
                            Colors.black,
                            Icons.color_lens, () {
                          setState(() {});
                          Widget body = Container(
                            padding: EdgeInsets.all(0),
                            color: Colors.white,
                            child: Container(
                              child: globalListBtnClr.listColorButton(),
                            ),
                          );
                          List<Widget> footer = [];
                          setState(() {
                            globalDlg.dialogHeaderBodyFooter(
                                context,
                                true,
                                Theme.of(context).primaryColorDark,
                                globalFont.strTitleDialog('Color', true,
                                    Colors.blue, 20, TextAlign.center),
                                Theme.of(context).primaryColorDark,
                                body,
                                footer,
                                250,
                                350);
                          });
                        }),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          child: globalFont.strDeveloperBody(
                              'Tutorials & Templates',
                              false,
                              Colors.black,
                              20,
                              TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: size() * 22,
                                height: size() * 22,
                                child: globalBtn.btnImg(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 0),
                                    Colors.black,
                                    size() * 16,
                                    360,
                                    1,
                                    Theme.of(context).primaryColor,
                                    globalVar.imgChialisp, () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Container(child: Chialisp()),
                                    ),
                                  );
                                }),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                width: size() * 22,
                                height: size() * 22,
                                child: globalBtn.btnImg(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 0),
                                    Colors.black,
                                    size() * 16,
                                    360,
                                    1,
                                    Theme.of(context).primaryColor,
                                    globalVar.imgFlutter, () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Container(child: FlutterUI()),
                                    ),
                                  );
                                }),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                width: size() * 22,
                                height: size() * 22,
                                child: globalBtn.btnImg(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 0),
                                    Colors.black,
                                    size() * 16,
                                    360,
                                    1,
                                    Theme.of(context).primaryColor,
                                    globalVar.imgPostgres, () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Container(child: PostgresUI()),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          width: double.infinity,
                          child: globalFont.strDeveloperBody('Published Apps',
                              false, Colors.black, 20, TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          child: Row(
                            children: [
                              globalIcon.factec(size(), context),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              globalIcon.hablaAndrea(size(), context),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              globalIcon.mubicate(size(), context),
                              Padding(padding: EdgeInsets.only(left: 10)),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          width: double.infinity,
                          child: globalFont.strDeveloperBody('Responsible Apps',
                              false, Colors.black, 20, TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          child: Row(
                            children: [
                              globalIcon.hablaAndrea(size(), context),
                              Padding(padding: EdgeInsets.only(left: 10)),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          width: double.infinity,
                          child: globalFont.strDeveloperBody('Papers', false,
                              Colors.black, 20, TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: size() * 20,
                                height: size() * 20,
                                child: globalBtn.btnIconUTextD(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 3),
                                    Colors.black,
                                    Colors.black,
                                    size() * 10,
                                    360,
                                    1,
                                    Colors.black,
                                    Icons.speaker_phone,
                                    Text(
                                      'RFID',
                                      style: TextStyle(fontSize: 10),
                                    ), () async {
                                  globalFunc.openAWeb(
                                      "https://link.springer.com/chapter/10.1007/978-3-030-32033-1_27");
                                }),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                width: size() * 20,
                                height: size() * 20,
                                child: globalBtn.btnIconUTextD(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 3),
                                    Colors.black,
                                    Colors.black,
                                    size() * 10,
                                    360,
                                    1,
                                    Colors.black,
                                    IconDownloaded.brain,
                                    Text(
                                      'Tumor',
                                      style: TextStyle(fontSize: 10),
                                    ), () async {
                                  globalFunc.openAWeb(
                                      "https://link.springer.com/chapter/10.1007/978-3-030-33617-2_10");
                                }),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                width: size() * 20,
                                height: size() * 20,
                                child: globalBtn.btnIconUTextD(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 3),
                                    Colors.black,
                                    Colors.black,
                                    size() * 10,
                                    360,
                                    1,
                                    Colors.black,
                                    IconDownloaded.gamepad,
                                    Text(
                                      'Math',
                                      style: TextStyle(fontSize: 10),
                                    ), () async {
                                  globalFunc.openAWeb(
                                      "http://www.scitepress.org/DigitalLibrary/Link.aspx?doi=10.5220/0007348605540559");
                                }),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 10)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget bodyMain() {
      if (screenConstHeight < screenConstWidth)
        return Row(
          children: [
            Container(
                color: Colors.black, width: size() * 50, child: presentation()),
            information(),
          ],
        );
      return Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: size() * 12),
              color: Colors.black,
              child: presentation()),
          information(),
        ],
      );
    }

    return Scaffold(
      body: Center(
        child: Container(child: bodyMain()),
      ),
    );
  }
}
