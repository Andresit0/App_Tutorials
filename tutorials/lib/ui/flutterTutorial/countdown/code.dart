String globalVar = '''
CountdownController countdownController = CountdownController(
      duration: Duration(seconds: 200, minutes: 1),
      onEnd: () {
        print('onEnd');
      });
  bool isRunning = false;
''';

String widgetCountdown = '''
Countdown(
                countdownController: countdownController,
                builder: (_, Duration time) {
                  return Text(
                    timerText(
                        time.inHours, time.inMinutes % 60, time.inSeconds % 60),
                    style: TextStyle(fontSize: 20),
                  );
                })
''';

String playStopWidget = '''
floatingActionButton: FloatingActionButton(
        child: Icon(isRunning ? Icons.stop : Icons.play_arrow),
        onPressed: () {
          if (!countdownController.isRunning) {
            countdownController.start();
            setState(() {
              isRunning = true;
            });
          } else {
            countdownController.stop();
            setState(
              () {
                isRunning = false;
              },
            );
          }
        },
      )
''';

String timerText = '''
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
''';

String dependencie = "flutter_countdown_timer: ^4.1.0";
