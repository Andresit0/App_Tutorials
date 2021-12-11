String codeToChange = '''
Rive example. Change the values according with your rive animation:

String path = '../lib/rive/assets/skills.riv';
String animationName = 'Designer\'s Test2';
String inputButton = 'Level';

The "_levelInput?.value = 0" need be changed according with input of the rive animation.
''';

String riveCode = '''
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;
  Artboard? _riveArtboard;
  StateMachineController? _controller;
  SMIInput<double>? _levelInput;
  String path = '../lib/rive/assets/skills.riv';
  String animationName = 'Designer\'s Test';
  String inputButton = 'Level';

  @override
  void initState() {
    super.initState();

    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load(path).then(
      (data) async {
        // Load the RiveFile from the binary data.
        final file = RiveFile.import(data);

        // The artboard is the root of the animation and gets drawn in the
        // Rive widget.
        final artboard = file.mainArtboard;
        var controller =
            StateMachineController.fromArtboard(artboard, animationName);
        if (controller != null) {
          artboard.addController(controller);
          _levelInput = controller.findInput(inputButton);
        }
        setState(() => _riveArtboard = artboard);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 1000,
            child: _riveArtboard == null
                ? const SizedBox()
                : Stack(
                    children: [
                      Positioned.fill(
                        child: Rive(
                          artboard: _riveArtboard!,
                        ),
                      ),
                      Positioned.fill(
                        bottom: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              child: const Text('Beginner'),
                              onPressed: () => _levelInput?.value = 0,
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              child: const Text('Intermediate'),
                              onPressed: () => _levelInput?.value = 1,
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              child: const Text('Expert'),
                              onPressed: () => _levelInput?.value = 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
''';

String dependencie = "rive: 0.7.28";
