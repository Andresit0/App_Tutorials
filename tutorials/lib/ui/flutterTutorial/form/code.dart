String form = '''
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Formulary'),
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
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final FocusNode focusIP = FocusNode();
  final FocusNode focusDb = FocusNode();

  void error() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Fix Information"),
          content: const Text('Review red text'),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void informationCompleted() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("All is Correct"),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    valuesNotAcepted(textInserted) {
      if (textInserted == null || textInserted.isEmpty) {
        return 'Complete all fields';
      } else {
        List<String> valuesNotAcepted = ["'", '"'];
        for (int i = 0; i < valuesNotAcepted.length; i++) {
          if (textInserted.contains(valuesNotAcepted[i])) {
            return 'Does not allow symbol:   ' + valuesNotAcepted[i];
          }
        }
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text('Using only ICONS'),
                  TextFormField(
                    validator: valuesNotAcepted,
                    autofocus: true,
                    focusNode: focusIP,
                    onFieldSubmitted: (v) {
                      //Go to the next field
                      FocusScope.of(context).requestFocus(focusDb);
                    },
                    controller: controllerUsername,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    maxLength: 30,
                    decoration: InputDecoration(
                      icon: Icon(Icons.verified_user),
                      labelText: 'User',
                      helperText: 'max 20 letters',
                      hintText: 'Username',
                      prefixIcon: Icon(
                        Icons.data_usage,
                      ),
                      suffixIcon: Icon(Icons.data_usage_outlined),
                      suffixText: 'suffixText  ',
                      prefixText: 'prefixText  ',
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text('Using ICONS + ICONBUTTON'),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            autofocus: true,
                            controller: controllerPassword,
                            focusNode: focusDb,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            validator: valuesNotAcepted,
                            onFieldSubmitted: (term) {
                              //Finish in the same field
                              FocusScope.of(context).requestFocus(focusDb);
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.password),
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            controllerPassword.clear();
                          },
                          icon: Icon(Icons.delete),
                          padding: EdgeInsets.all(0),
                          splashRadius: 18,
                          iconSize: 20,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color: Colors.purple, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.blue,
                    child: IconButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          informationCompleted();
                        } else {
                          error();
                        }
                      },
                      icon: Icon(Icons.check),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
''';
