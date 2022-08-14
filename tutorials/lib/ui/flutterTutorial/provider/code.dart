String dependencies = '''
  provider: ^6.0.3
''';

String writeReadCode = '''
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

//ChangeNotifier Inside Class To notifyListeners() Providers
class Counter with ChangeNotifier {
  int _counter = 0;
  get currentCounter => _counter;
  void add1ToCounter() {
    _counter++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Definig A List Of Providers
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  //Widget That Creates Its Own Context
  Widget counterWidget() {
    return Consumer<Counter>(
      builder: (context, counter, _) => Text(
        counter.currentCounter.toString(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Information Inside A Provider
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            //Using Information Inside A Provider
            Text('\${counter.currentCounter}'),
            //Using Widget That Creates Its Own Context
            counterWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.add1ToCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

''';
