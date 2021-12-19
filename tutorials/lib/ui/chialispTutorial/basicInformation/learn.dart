import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/img/icon/icon_downloaded.dart' as iconDownloaded;

Widget learn(double size, BuildContext context) {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  return Expanded(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              iconSize: size * 8,
              icon: const Icon(
                Icons.bookmark,
                color: Colors.black,
                semanticLabel: 'Bookmark',
              ),
              onPressed: () {
                _pdfViewerKey.currentState?.openBookmarkView();
              },
            ),
            Container(
              alignment: Alignment.topRight,
              child: globalBtn.btnIconCircle(
                  size * 12, size * 8, false, Colors.black, Icons.web, context,
                  () {
                globalFunc.openAWeb("https://chialisp.com/");
              }),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topCenter,
          child: globalFont.titleBlock('Spanish Version',
              Theme.of(context).primaryColor, size * 6, TextAlign.center),
        ),
        Expanded(
          child: SfPdfViewer.asset(
            'lib/ui/chialispTutorial/basicInformation/chialisp.pdf',
            key: _pdfViewerKey,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: globalFont.titleBlock('Installation and Testnet',
              Theme.of(context).primaryColor, size * 4, TextAlign.start),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Container(
          alignment: Alignment.topLeft,
          child: globalFont.paragraphBlock(
              'The installation is on page 4 and testnet configuration on page 33. Another information on chialisp.com',
              Colors.black,
              size * 3,
              TextAlign.start),
        ),
        Padding(padding: EdgeInsets.only(top: 5)),
      ],
    ),
  );
}
