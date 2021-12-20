import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as isWeb;
import '/ui/global/clr.dart' as globalClr;
import '/ui/global/font.dart' as globalFont;
import 'learn.dart' as learn;
import 'package:rive/rive.dart' as rive;
import 'package:flutter/services.dart';

class Rive extends StatefulWidget {
  Rive({Key? key}) : super(key: key);
  @override
  RivePageState createState() => RivePageState();
}

class RivePageState extends State<Rive> {
  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;
  rive.Artboard? _riveArtboard;
  rive.StateMachineController? _controller;
  rive.SMIInput<double>? _levelInput;
  String path = 'lib/ui/flutterTutorial/rive/skills.riv';
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
        final file = rive.RiveFile.import(data);

        // The artboard is the root of the animation and gets drawn in the
        // Rive widget.
        final artboard = file.mainArtboard;
        var controller =
            rive.StateMachineController.fromArtboard(artboard, animationName);
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
      if (isWeb.kIsWeb) size = size / 1.5;
      return size;
    }

    return Scaffold(
      appBar: !isWeb.kIsWeb
          ? AppBar(
              title: Container(
                width: double.infinity,
                child: globalFont.strDeveloperBody(
                    'Write & Read Files',
                    false,
                    globalClr.colorPrimaryTextIcon(colorPrimary),
                    size() * 8,
                    TextAlign.center),
              ),
            )
          : AppBar(
              toolbarHeight: 0,
            ),
      body: Container(
          child: Column(
        children: [
          learn.learn(
            size(),
            context,
            Container(
              height: 500,
              width: 1000,
              child: _riveArtboard == null
                  ? const SizedBox()
                  : Stack(
                      children: [
                        Positioned.fill(
                          child: rive.Rive(
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
          ),
        ],
      )),
    );
  }
}
