String corsProblems = '''
Header set Access-Control-Allow-Origin *
''';

String accessThroughFiles = '''
Deny from all
''';

String writeImg = '''
<?php

\$data = \$_REQUEST['image'];
\$filename = \$_REQUEST['name'];

\$realImage = base64_decode(\$data);
file_put_contents(\$filename , \$realImage);

list(\$width, \$height) = getimagesize(\$filename);
\$newwidth = 200;
\$percent = \$newwidth*100/\$width;
\$newheight = \$height * \$percent/100;


\$thumb = imagecreatetruecolor(\$newwidth, \$newheight);
\$source = imagecreatefromstring(\$realImage);

imagecopyresized(\$thumb, \$source, 0, 0, 0, 0, \$newwidth, \$newheight, \$width, \$height);
imagejpeg(\$thumb,\$filename);

echo 'true';

?>
''';

String imgRead = '''
<?php
\$imgName = \$_REQUEST['imageName'];
\$rutaImagen = __DIR__ . "/\$imgName";
\$informacionImagen = getimagesize(\$rutaImagen);
header("Content-type: {\$informacionImagen['mime']}");
readfile(\$rutaImagen);
?>
''';

String dependencies = '''
image_picker: ^0.8.4+5
universal_html: 2.0.7
''';

String database = '''
import 'package:http/http.dart' as http;

Future<bool> sendImage(
    String filename, String strBase64, Function refresh) async {
  var url = Uri.https('facturaciontecnologica.com', '/img/writeClassImg.php');
  await http.post(url, body: {
    'name': filename,
    'image': strBase64,
  }).then((result) {
    // ignore: avoid_print
    print(result.body.toString());
    refresh();
  }).catchError((error) {
    // ignore: avoid_print
    print('db.sendImage() Error: ' + error.toString());
    // ignore: invalid_return_type_for_catch_error
    return false;
  });
  return true;
}
''';

String mainFile = '''
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:typed_data';
import 'dart:convert' as convert;
import 'package:universal_html/html.dart' as dartHtml;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'database.dart' as db;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Send image to server'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String strBase64 =
      '/9j/4AAQSkZJRgABAQEASABIAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/wgARCAEAAQADASIAAhEBAxEB/8QAHAABAAMAAgMAAAAAAAAAAAAAAAUGBwIEAQMI/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEAMQAAAB1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4nKAziZLdP5lDGzOPIAAAAAAAAAAAAUa85sSl1rtiFKutdIi85tpIAAAAAAAAAAAAjJMYtsMXnBrePe7RzsyYAAAAAAAAAAAAPHoxwu9Ts1wMptlqp5efOKbGdgAAAAAAAAAAA6hlWk5rsIABEZtsGPGwur2gAAAAAAAAABBzg+f5bahirahirahisT9ACEmwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//xAAjEAACAgIBAgcAAAAAAAAAAAAEBQIDAQZAABUQERITFCCA/9oACAEBAAEFAvyeQ4AHkO4AIlzJSxGLBiU6LG1Sr0k6pV6V7EpKXHOJR5W3k5pWamJGhZ4bYJG9ZqBOblnK3eGcia9ZixN4bDZitNpEM4E5TISJwSVhNKVRdVfC+6qiDphN0UtEiCFy2asdjC3VzKp1awZbNYrHXQ5ec+WDtjCGzZtl+c17ZfjIOxhE5xnzxySLqx6SzTX5S/WhKMVj01YsHptww1oS/AhpqAqi6BFPI2Uuw9irArXi/RoBWwF1kuwFhxy7vji6dT75/wBtxp9hgJb8gXjO652qV5DNfHvDrrvDrrvDrrvDrrvDrrvDrpgQzYRSVzqVfmv/xAAUEQEAAAAAAAAAAAAAAAAAAACA/9oACAEDAQE/AQB//8QAFBEBAAAAAAAAAAAAAAAAAAAAgP/aAAgBAgEBPwEAf//EADUQAAECAwMJBAsBAAAAAAAAAAIBAwAEERIhMSMyQEFCUWFikRQicZMFEBMgJFKAgbHB8GP/2gAIAQEABj8C+k+jkyFeXvfiKNzIV5u7+dNUiWiJeqx2SQtIz0tcV4R8VMGpbm7o+FmDQv8AS+OyT9pWetninCEIVqi3oul+zHF4rP2gXaZR7vKvDV6ydplGe8i8NcezLFkrP20uXPUJqn90iVUdQ2enrmlLWNnrEweojRP7rpbjBbSXLuWHJSeFUarfyrvi2y4JjvFYtvOCA7yWG5SRFVardzLvhtgdlL13rplHhoaYGmKRWWfAk8bKxWZfAU8bSxRkamuJriumVXCFFtVfPkw6xk5ZsU5lVYyks2ScqqkILiqwfPh1iqYaUTrxWQG9Vjs8oKixu/ZQizOXc45sUbZbBOUaRR1ls05hrCrLZBzhmx2ebFSY3fsYF1krQFei6SHo+WvESp4lAtN47RfMvuk05jsl8qwfo+ZuQionAtIeeXYFSh+acvUEx4r77E03cppjxSGnk2xQtHmQaFSNRwSDGWacRCvWrVYzC8mMwvJjMLyYzC8mMwvJjMLyYAZlpxUHCjVIlgdFRNBvRfps/8QAJxABAAEBBgcAAwEAAAAAAAAAAQARITFBUWGBQHGRocHR8BAggOH/2gAIAQEAAT8h/k9JT95VR3QZXtxVV2caWAdRcEaDcaFxm4aIYuIgAbo1jm4CAB3ApCg3GjcZuOiGgFQXJxZ9aVjltfHWK0eEB53/ACLRV7APO0frWkc9p56cWI747kJhiudjx+UwwXOx5ijujscWYemwFzFubCroMxgtXzEVi+Qg3NhU1GQRh67gXvGF1Aw/uNIwwWVfG8MYrNXxvG6gY/1GnGAiALVYQLfP+Kz6FFyn0KLfWMAnz/qkAEFWicUAg9REAO46FMzxKjWNcHIx3mnEAjTgARUawry5mG0IK7jqUzPEKQeg4myCBh39D3A7G/StzP1LsL9O3Mlq0hPb0fXEFcimZ0Kx8CYter0Hr+64gwadvROkG4nLKleHspQ75tt7RAKgJaNp9/1Pv+p9/wBT7/qff9T7/qIBVQlp2mdaGjL+bP/aAAwDAQACAAMAAAAQ8888888888888888888888888888888888888888888888888888888888888888888888888888888888888880488888888888888cs88888888888888gQ88888888888888Qg8888888888888M88Y088888888888c88sc8888888888888888888888888888888888888888888888888888888888888888888888888888888888888/8QAFBEBAAAAAAAAAAAAAAAAAAAAgP/aAAgBAwEBPxAAf//EABQRAQAAAAAAAAAAAAAAAAAAAID/2gAIAQIBAT8QAH//xAAlEAEAAQMDBAIDAQAAAAAAAAABEQAhQTFRYUBxgZGhwRAggLH/2gAIAQEAAT8Q/k5YJdKliiBMtmEHvU0WQJlsQk9qGSS51iGuowIlVwBS8SstQsPqC3JFQpXFJSbYU7oO1C4pKjbKndD2oeJSWpWD3DgwDJQ2voyokRyJ1aPyXGGB9qB4VTpUqLhWTtA9y/MaVBF1pJ2hO4Uj9l1lgPSoOB1Z/qkmGc/1QvEIzCLH5efyLwGNygY+Xij/AESXLO/46sf2NzOnxITuSZqUCOKUYRYQTGATZN8sgT2Y0eG9G+WUp7E6vBepQI5pRpFhLE4Vdgb2NxOnzqxsQY6yKEaLwZ05Em0N60sFhPyAlNPBRh+BApFCNF4M6cCDeW/WFrVQgA1VqyUFIweXZ7ii1xQQ9n1oa5oIe/pqyWUIyeDY7igYlEJEdEeqV7XRw+1YALqhUzoG99P7LjALdJ6KMq3hfkZ2KPilgN8FP0SyG+SrR1UNbsr8hGzUpwG9df70GEG4d2ujp9I2RuIj1K+rRrJZlsqcM8FRRwNhBuuMBg8v6hFQ3iDYcYTJ4aT1eHYLEtkjlkavUBAMvZODykU5bH6lfyYP72Xd/I8O+DQZAPhs4eJjp2jMCyMEBlg2zU5L5ICF2Wf3ddddddiJfZABuSxQVmgIuqEwwlsfzZ//2Q==';
  final configPicker = ImagePicker();

  getImageWeb(Function refresh) {
    Uint8List? uploadedImage;
    dartHtml.FileUploadInputElement uploadInput =
        dartHtml.FileUploadInputElement();
    uploadInput.click();
    uploadInput.onChange.listen((e) {
      final files = uploadInput.files;
      if (files?.length == 1) {
        final file = files![0];
        dartHtml.FileReader reader = dartHtml.FileReader();
        reader.onLoadEnd.listen((e) {
          uploadedImage = reader.result as Uint8List?;
          strBase64 = convert.base64Encode(uploadedImage!);
          refresh();
        });
        reader.onError.listen((fileEvent) {});
        reader.readAsArrayBuffer(file);
      }
    });
  }

  Future getImageAppGalery(Function refresh) async {
    File _image;
    final pickedFile = await configPicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 700.0,
      maxWidth: 700.0,
      imageQuality: 30,
    );
    _image = File(pickedFile!.path);
    strBase64 = convert.base64Encode(_image.readAsBytesSync());
    refresh();
  }

  Future getImageAppCamera(Function refresh) async {
    File _image;
    final pickedFile = await configPicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 700.0,
      maxWidth: 700.0,
      imageQuality: 30,
    );
    _image = File(pickedFile!.path);
    strBase64 = convert.base64Encode(_image.readAsBytesSync());
    refresh();
  }

  Widget obtainImageForCircle(double size, Function refresh) {
    if (!kIsWeb) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            iconSize: size * 8,
            icon: Icon(
              Icons.camera_alt_outlined,
              size: size * 8,
            ),
            onPressed: () {
              getImageAppCamera(refresh);
            },
          ),
          IconButton(
            iconSize: size * 8,
            icon: Icon(
              Icons.insert_photo_outlined,
              size: size * 8,
            ),
            onPressed: () {
              getImageAppGalery(refresh);
            },
          ),
        ],
      );
    } else {
      return IconButton(
        iconSize: size * 8,
        icon: Icon(
          Icons.insert_photo_outlined,
          size: size * 8,
        ),
        onPressed: () {
          getImageWeb(refresh);
        },
      );
    }
  }

  ImageProvider imgForShow() {
    String temp = strBase64.substring(0, 4);
    if (temp == "http") {
      return NetworkImage(strBase64);
    } else {
      return MemoryImage(
        convert.base64Decode(strBase64),
      );
    }
  }

  Widget imageCircle(double size, Function refresh) {
    return StatefulBuilder(builder: (context, setState) {
      return SizedBox(
        width: size * 30,
        height: size * 30,
        child: Container(
          child: obtainImageForCircle(size, refresh),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: imgForShow(),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    });
  }

  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            obtainImageForCircle(15, refresh),
            imageCircle(15, refresh),
            TextButton(
                onPressed: () => db.sendImage('img', strBase64, refresh),
                child: const Text('Send To Server'))
          ],
        ),
      ),
    );
  }
}
''';
