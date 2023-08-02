import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/img/icon/icon_downloaded.dart' as iconDownloaded;
import 'code.dart' as code;
import 'package:flutter_countdown_timer/index.dart';

CountdownController countdownController = CountdownController(
    duration: Duration(seconds: 200, minutes: 1),
    onEnd: () {
      print('onEnd');
    });
bool isRunning = false;

String timerText(int hour, int min, int sec) {
  String hourStr = '00';
  String minStr = '00';
  String secStr = '00';
  if (hour < 10) {
    hourStr = '0' + hour.toString();
  } else {
    hourStr = hour.toString();
  }
  if (min < 10) {
    minStr = '0' + min.toString();
  } else {
    minStr = min.toString();
  }
  if (sec < 10) {
    secStr = '0' + sec.toString();
  } else {
    secStr = sec.toString();
  }
  return hourStr + ':' + minStr + ':' + secStr;
}

Widget learn(double size, BuildContext context) {
  // late List<Widget> rows = [
  //   reorderableWidget(Text('widget 1', style: TextStyle(fontSize: size * 5))),
  //   reorderableWidget(Text('widget 2', style: TextStyle(fontSize: size * 5))),
  //   reorderableWidget(Text('widget 3', style: TextStyle(fontSize: size * 5))),
  //   reorderableWidget(Text('widget 4', style: TextStyle(fontSize: size * 5))),
  //   reorderableWidget(Text('widget 5', style: TextStyle(fontSize: size * 5))),
  //   reorderableWidget(Text('widget 6', style: TextStyle(fontSize: size * 5))),
  //   reorderableWidget(Text('widget 7', style: TextStyle(fontSize: size * 5))),
  //   reorderableWidget(Text('widget 8', style: TextStyle(fontSize: size * 5))),
  //   reorderableWidget(Text('widget 9', style: TextStyle(fontSize: size * 5))),
  // ];
  return Expanded(
    child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: globalBtn.btnIconCircle(
                  size * 15,
                  size * 10,
                  false,
                  Colors.black,
                  iconDownloaded.IconDownloaded.github_circled,
                  context, () {
                globalFunc.openAWeb(
                    "https://github.com/Andresit0/Countdown_Timer_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('Countdown Timer',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Container(
              width: size * 20,
              child: Column(
                children: [
                  Countdown(
                      countdownController: countdownController,
                      builder: (_, Duration time) {
                        return Text(
                          timerText(time.inHours, time.inMinutes % 60,
                              time.inSeconds % 60),
                          style: TextStyle(fontSize: 20),
                        );
                      }),
                  FloatingActionButton(
                    child: Icon(isRunning ? Icons.stop : Icons.play_arrow),
                    onPressed: () {
                      if (!countdownController.isRunning) {
                        countdownController.start();
                        isRunning = true;
                      } else {
                        countdownController.stop();
                        isRunning = false;
                      }
                    },
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Dependencie:',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () => Clipboard.setData(
                        ClipboardData(text: code.dependencie))),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  code.dependencie, Colors.black, size * 4, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Global Variables:',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () =>
                        Clipboard.setData(ClipboardData(text: code.globalVar))),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  code.globalVar, Colors.black, size * 4, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Text Counter:',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () =>
                        Clipboard.setData(ClipboardData(text: code.timerText))),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  code.timerText, Colors.black, size * 4, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Countdown Widget:',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () => Clipboard.setData(
                        ClipboardData(text: code.widgetCountdown))),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(code.widgetCountdown,
                  Colors.black, size * 4, TextAlign.start),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Button Play-Stop Countdown:',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Container(
                child: globalBtn.btnIconCircle(
                    size * 12,
                    size * 7,
                    false,
                    Colors.black,
                    Icons.copy_all,
                    context,
                    () => Clipboard.setData(
                        ClipboardData(text: code.playStopWidget))),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  code.playStopWidget, Colors.black, size * 4, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
