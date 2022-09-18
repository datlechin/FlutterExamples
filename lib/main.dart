import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _strings = ['Flutter', 'Dart', 'PHP', 'Laravel', 'Google'];
  String displayString = 'Hello World!';

  void _randomText() {
    setState(() {
      displayString = (_strings.toList()..shuffle()).first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayString,
              style: const TextStyle(fontSize: 30.0),
            ),
            const Padding(padding: EdgeInsets.all(20.0)),
            ElevatedButton(
              onPressed: _randomText,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
              child: const Text('Random'),
            )
          ],
        ),
      )
    );
  }
}

