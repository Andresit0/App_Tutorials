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

String streamcontroller = '''
StreamController<int> counter = StreamController.broadcast();
''';

String streamcontrollerWidget = '''
StreamBuilder<int>(
                  initialData: 0,
                  stream: counter.stream,
                  builder: (context, AsyncSnapshot snapshot) {
                    return Text(
                      'Data ' + snapshot.data.toString(),
                    );
                  }),
''';
