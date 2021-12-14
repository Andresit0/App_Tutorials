import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '/ui/global/font.dart' as globalFont;
import '/ui/global/btn.dart' as globalBtn;
import '/ui/global/func.dart' as globalFunc;
import '/ui/img/icon/icon_downloaded.dart' as iconDownloaded;
import 'code.dart' as code;

final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

Widget learn(double size, BuildContext context) {
  final List<Widget> pages = <Widget>[
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new FlutterLogo(),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new FlutterLogo(style: FlutterLogoStyle.stacked),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new FlutterLogo(style: FlutterLogoStyle.horizontal),
    ),
  ];
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
                    "https://github.com/Andresit0/Encrypt_Decrypt_Flutter");
              }),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: globalFont.titleBlock('PDF',
                  Theme.of(context).primaryColor, size * 8, TextAlign.center),
            ),
            Column(
              children: [
                IconButton(
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
                  width: 1000,
                  height: 500,
                  child: SfPdfViewer.network(
                    'https://github.com/Andresit0/PDF_Viewer_Flutter',
                    key: _pdfViewerKey,
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('Dependencie: ',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
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
              child: SelectableText(
                code.dependencie,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.titleBlock('index.html',
                  Theme.of(context).primaryColor, size * 6, TextAlign.start),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock('Before title insert:',
                  Colors.black, size * 4, TextAlign.start),
            ),
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
                        Clipboard.setData(ClipboardData(text: code.indexHtml))),
              ),
            ),
            Container(
              child: SelectableText(
                code.indexHtml,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Import:', Colors.black, size * 4, TextAlign.start),
            ),
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
                    () => Clipboard.setData(ClipboardData(text: code.import))),
              ),
            ),
            Container(
              child: SelectableText(
                code.import,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'PDF button:', Colors.black, size * 4, TextAlign.start),
            ),
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
                        ClipboardData(text: code.iconButton))),
              ),
            ),
            Container(
              child: SelectableText(
                code.iconButton,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              alignment: Alignment.topLeft,
              child: globalFont.paragraphBlock(
                  'Widget:', Colors.black, size * 4, TextAlign.start),
            ),
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
                    () => Clipboard.setData(ClipboardData(text: code.widget))),
              ),
            ),
            Container(
              child: SelectableText(
                code.widget,
                style: TextStyle(fontSize: size * 4),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
          ],
        )),
  );
}
