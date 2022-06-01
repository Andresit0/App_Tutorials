String indexHtml = '''
<!-- PDF -->
  <!-- Link to pdf.js library -->
<script src="//cdnjs.cloudflare.com/ajax/libs/pdf.js/2.7.570/pdf.min.js"></script>
<script type="text/javascript">
  // Link to worker for pdf.js library
  pdfjsLib.GlobalWorkerOptions.workerSrc = "//cdnjs.cloudflare.com/ajax/libs/pdf.js/2.7.570/pdf.worker.min.js";
</script>
<!-- PDF Close -->
''';

String dependencie = '''
syncfusion_flutter_pdfviewer: ^20.1.58-beta
''';

String import = '''
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
''';

String iconButton = '''
final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              _pdfViewerController.nextPage();
            },
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pdfViewerController.previousPage();
            },
            child: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pdfViewerController.zoomLevel++;
            },
            child: Icon(
              Icons.zoom_in,
              color: Colors.white,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pdfViewerController.zoomLevel--;
            },
            child: Icon(
              Icons.zoom_out,
              color: Colors.white,
            ),
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      )
''';

String widget = '''
PdfViewerController _pdfViewerController = PdfViewerController();

@override
void initState() {
  _pdfViewerController = PdfViewerController();
  super.initState();
}

SfPdfViewer.network(
        'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
        controller: _pdfViewerController,
        key: _pdfViewerKey,
      )
''';
