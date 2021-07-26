String writeData = '''
await globalWrite.writeData(filename, data);
''';

String readDataList = '''
data.split(";")
''';

String writeDataList = '''
void writeData() async {
    data = await globalWrite.readData(filename);
    data = data + controllerWriteData.text + ";";
    await globalWrite.writeData(filename, data);
    setState(() {});
}
''';

String refreshData = '''
void readDataNow() async {
  data = await globalWrite.readData(filename);
  setState(() {});
}
''';

String initState = '''
@override
void initState() {
  super.initState();
  readDataNow();
}
''';

String writeReadCode = '''
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart' as pathPrivider;

Future<String> get localPath async {
  final dir = await pathPrivider.getApplicationDocumentsDirectory();
  return dir.path;
}

Future<File> localFile(String filename) async {
  final path = await localPath;
  return File('\$path/' + filename);
}

Future<String> readData(String filename) async {
  try {
    final file = await localFile(filename);
    String body = await file.readAsString();
    return body;
  } catch (e) {
    print('writeData.dart readData(String filename) function error: ' +
        e.toString());
    return '';
  }
}

Future<File> writeData(String filename, String data) async {
  final file = await localFile(filename);
  return file.writeAsString("\$data");
}

''';
