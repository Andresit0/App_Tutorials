import 'package:flutter/material.dart';
import 'package:temp_btn_color_dialog_font/ui/chialispTutorial/chialisp.dart';
import 'package:temp_btn_color_dialog_font/ui/gitTutorial/git.dart';
import 'package:temp_btn_color_dialog_font/ui/global/slidable/clr.dart';
import 'package:temp_btn_color_dialog_font/ui/postgresTutorial/postgresUI.dart';
import 'dart:ui';
import '../global/dialog.dart';
import '../global/pageView/dotIndicator.dart';
import '/ui/flutterTutorial/flutterUI.dart';
import '../global/func.dart' as globalFunc;
import '/ui/andresRiofrio/iconAppPublished.dart' as globalIcon;
import '../img/icon/icon_downloaded.dart';
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
  bool activateColor = false;
  final List<Widget> pagesProFactec = <Widget>[
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactecIntro),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec1_conf),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec2_detalleVentas),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec3_estadisticas),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec4_permisos),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec5_inventario),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec6_inventario),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec7_productos),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec8_sistemaVentas),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.asset(globalVar.imgProFactec9_cuenta),
    ),
  ];
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

    Widget colorButton(double iconSize) {
      return Container(
        child: Row(
          children: [
            activateColor
                ? Expanded(child: globalListBtnClr.listColorButton(iconSize))
                : Expanded(child: Container()),
            Container(
              color: Colors.transparent,
              alignment: Alignment.centerRight,
              child: IconButton(
                  splashRadius: 1,
                  iconSize: iconSize,
                  onPressed: () {
                    setState(() {
                      activateColor = !activateColor;
                    });
                  },
                  icon: Icon(
                    activateColor ? Icons.cancel_outlined : Icons.color_lens,
                    size: iconSize,
                    color: Theme.of(context).colorScheme.secondary,
                  )),
            ),
          ],
        ),
      );
    }

    Widget presentationColumn() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: size() * 50,
              height: size() * 50,
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
                            size() * 16,
                            size() * 7,
                            false,
                            Colors.black,
                            IconDownloaded.github_circled,
                            context, () {
                          globalFunc.openAWeb("https://github.com/Andresit0");
                        }),
                        globalBtn.btnIconCircle(
                            size() * 16,
                            size() * 7,
                            false,
                            Colors.black,
                            IconDownloaded.stackoverflow,
                            context, () {
                          globalFunc.openAWeb(
                              "https://stackoverflow.com/users/11075752/andres-riofrio");
                        }),
                        globalBtn.btnIconCircle(size() * 16, size() * 7, false,
                            Colors.black, IconDownloaded.whatsapp, context, () {
                          globalFunc.openAWeb("https://wa.me/593993715261");
                        }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            globalFont.strDeveloperName(
                'Andrés', false, Colors.white, size() * 10, TextAlign.center),
            globalFont.strDeveloperName('Riofrío Valdivieso', false,
                Colors.white, size() * 8, TextAlign.center),
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
              width: size() * 50,
              height: size() * 50,
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
                            size() * 16,
                            size() * 7,
                            false,
                            Colors.black,
                            IconDownloaded.github_circled,
                            context, () {
                          globalFunc.openAWeb("https://github.com/Andresit0");
                        }),
                        globalBtn.btnIconCircle(
                            size() * 16,
                            size() * 7,
                            false,
                            Colors.black,
                            IconDownloaded.stackoverflow,
                            context, () {
                          globalFunc.openAWeb(
                              "https://stackoverflow.com/users/11075752/andres-riofrio");
                        }),
                        globalBtn.btnIconCircle(size() * 16, size() * 7, false,
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
            Column(
              children: [
                globalFont.strDeveloperName('Andrés', false, Colors.white,
                    size() * 12, TextAlign.center),
                globalFont.strDeveloperName(' Riofrío-Valdivieso', false,
                    Colors.white, size() * 10, TextAlign.center),
              ],
            ),
          ],
        ),
      );
    }

    Widget pageView(List<Widget> pages) {
      final _controller = new PageController();
      const _kDuration = const Duration(milliseconds: 300);
      const _kCurve = Curves.ease;

      return IconTheme(
        data: new IconThemeData(color: Colors.black),
        child: new Stack(
          children: <Widget>[
            new PageView.builder(
              physics: new AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return pages[index % pages.length];
              },
            ),
            new Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: new Container(
                color: Colors.grey[800],
                padding: const EdgeInsets.all(20.0),
                child: new Center(
                  child: new DotsIndicator(
                    controller: _controller,
                    itemCount: pages.length,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      );
                    },
                  ),
                ),
              ),
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
          padding: EdgeInsets.only(left: 10, bottom: 5),
          child: Container(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height: size() * 12, child: colorButton(size() * 10)),
                  Padding(padding: EdgeInsets.only(top: 5)),
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
                              size() * 5,
                              TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          alignment: Alignment.topLeft,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: size() * 25,
                                  height: size() * 25,
                                  child: globalBtn.btnImg(
                                      Colors.transparent,
                                      Colors.black,
                                      size() * 18,
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
                                  width: size() * 25,
                                  height: size() * 25,
                                  child: globalBtn.btnImg(
                                      Colors.transparent,
                                      Colors.black,
                                      size() * 18,
                                      360,
                                      1,
                                      Theme.of(context).primaryColor,
                                      globalVar.imgGit, () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Container(child: Git()),
                                      ),
                                    );
                                  }),
                                ),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Container(
                                  width: size() * 25,
                                  height: size() * 25,
                                  child: globalBtn.btnImg(
                                      Colors.transparent,
                                      Colors.black,
                                      size() * 18,
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
                                  width: size() * 25,
                                  height: size() * 25,
                                  child: globalBtn.btnImg(
                                      Colors.transparent,
                                      Colors.black,
                                      size() * 18,
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
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          width: double.infinity,
                          child: globalFont.strDeveloperBody(
                              'Current Developing Projects',
                              false,
                              Colors.black,
                              size() * 5,
                              TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          children: [
                            Container(
                              width: size() * 29,
                              height: size() * 29,
                              child: globalBtn.btnImg(
                                  Colors.transparent,
                                  Colors.transparent,
                                  size() * 90,
                                  360,
                                  0,
                                  Colors.transparent,
                                  globalVar.imgCocktail, () async {
                                dialogHeaderBodyFooter(
                                    context,
                                    true,
                                    primaryColor,
                                    Text('COCKTAIL GAME',
                                        style: TextStyle(
                                          color: Colors.white,
                                        )),
                                    Colors.white,
                                    pageView(<Widget>[
                                      ConstrainedBox(
                                        constraints:
                                            const BoxConstraints.expand(),
                                        child: Column(
                                          children: [
                                            globalBtn.btnImg(
                                                Colors.transparent,
                                                Colors.transparent,
                                                size() * 50,
                                                360,
                                                0,
                                                Colors.transparent,
                                                globalVar.imgWeb, () {
                                              globalFunc.openAWeb(
                                                  "http://97b4-190-110-60-140.ngrok.io/cocktail_game/#/");
                                            }),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: size() * 2))
                                          ],
                                        ),
                                      ),
                                      ConstrainedBox(
                                        constraints:
                                            const BoxConstraints.expand(),
                                        child: Column(
                                          children: [
                                            globalBtn.btnImg(
                                                Colors.transparent,
                                                Colors.transparent,
                                                size() * 48,
                                                360,
                                                0,
                                                Colors.transparent,
                                                globalVar.imgPlayStore, () {
                                              globalFunc.openAWeb(
                                                  "https://97b4-190-110-60-140.ngrok.io/cocktail_file/cocktail_apk.zip");
                                            }),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: size() * 2))
                                          ],
                                        ),
                                      ),
                                      ConstrainedBox(
                                        constraints:
                                            const BoxConstraints.expand(),
                                        child: Column(
                                          children: [
                                            globalBtn.btnImg(
                                                Colors.transparent,
                                                Colors.transparent,
                                                size() * 48,
                                                360,
                                                0,
                                                Colors.transparent,
                                                globalVar.imgWindows, () {
                                              globalFunc.openAWeb(
                                                  "https://97b4-190-110-60-140.ngrok.io/cocktail_file/cocktail_windows.zip");
                                            }),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: size() * 2))
                                          ],
                                        ),
                                      ),
                                      ConstrainedBox(
                                        constraints:
                                            const BoxConstraints.expand(),
                                        child: Column(
                                          children: [
                                            globalBtn.btnImg(
                                                Colors.transparent,
                                                Colors.transparent,
                                                size() * 48,
                                                360,
                                                0,
                                                Colors.transparent,
                                                globalVar.imgApple, () {
                                              globalFunc.openAWeb(
                                                  "https://97b4-190-110-60-140.ngrok.io/cocktail_file/cocktail_mac.zip");
                                            }),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: size() * 2))
                                          ],
                                        ),
                                      ),
                                    ]),
                                    [],
                                    size() * 60,
                                    size() * 70);
                              }),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              width: size() * 28,
                              height: size() * 28,
                              child: globalBtn.btnImg(
                                  Colors.transparent,
                                  Colors.transparent,
                                  size() * 90,
                                  360,
                                  0,
                                  Colors.transparent,
                                  globalVar.imgProFactec, () {
                                dialogHeaderBodyFooter(
                                    context,
                                    true,
                                    primaryColor,
                                    Text('PRO FACTEC',
                                        style: TextStyle(
                                          color: Colors.white,
                                        )),
                                    Colors.white,
                                    pageView(pagesProFactec),
                                    [],
                                    size() * 200,
                                    size() * 228);
                              }),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          width: double.infinity,
                          child: globalFont.strDeveloperBody('Published Apps',
                              false, Colors.black, size() * 5, TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          child: Row(
                            children: [
                              globalIcon.factec(size() * 1.1, context),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              globalIcon.hablaAndrea(size() * 1.1, context),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              globalIcon.mubicate(size() * 1.1, context),
                              Padding(padding: EdgeInsets.only(left: 10)),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          width: double.infinity,
                          child: globalFont.strDeveloperBody('Responsible Apps',
                              false, Colors.black, size() * 5, TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          child: Row(
                            children: [
                              globalIcon.hablaAndrea(size() * 1.1, context),
                              Padding(padding: EdgeInsets.only(left: 10)),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          width: double.infinity,
                          child: globalFont.strDeveloperBody('Papers', false,
                              Colors.black, size() * 5, TextAlign.left),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: size() * 24,
                                height: size() * 24,
                                child: globalBtn.btnIconUTextD(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 3),
                                    Colors.black,
                                    Colors.black,
                                    size() * 12,
                                    360,
                                    1,
                                    Colors.black,
                                    Icons.speaker_phone,
                                    Text(
                                      'RFID',
                                      style: TextStyle(fontSize: size() * 3),
                                    ), () async {
                                  globalFunc.openAWeb(
                                      "https://link.springer.com/chapter/10.1007/978-3-030-32033-1_27");
                                }),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                width: size() * 24,
                                height: size() * 24,
                                child: globalBtn.btnIconUTextD(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 3),
                                    Colors.black,
                                    Colors.black,
                                    size() * 12,
                                    360,
                                    1,
                                    Colors.black,
                                    IconDownloaded.brain,
                                    Text(
                                      'Tumor',
                                      style: TextStyle(fontSize: size() * 3),
                                    ), () async {
                                  globalFunc.openAWeb(
                                      "https://link.springer.com/chapter/10.1007/978-3-030-33617-2_10");
                                }),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                width: size() * 24,
                                height: size() * 24,
                                child: globalBtn.btnIconUTextD(
                                    Colors.transparent,
                                    EdgeInsets.only(top: 3),
                                    Colors.black,
                                    Colors.black,
                                    size() * 12,
                                    360,
                                    1,
                                    Colors.black,
                                    IconDownloaded.gamepad,
                                    Text(
                                      'Math',
                                      style: TextStyle(fontSize: size() * 3),
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
                color: Colors.black, width: size() * 70, child: presentation()),
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
