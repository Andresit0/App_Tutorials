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
syncfusion_flutter_pdfviewer: ^19.3.59-beta
''';

String import = '''
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
''';

String iconButton = '''
final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
''';

String widget = '''
SfPdfViewer.network(
        'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
        key: _pdfViewerKey,
      )
''';
