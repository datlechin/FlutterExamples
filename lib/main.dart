import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleMaterialApp());
}

class SimpleMaterialApp extends StatelessWidget {
  const SimpleMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Material App'),
        ),
        body: const Center(
          child: Text('Hello world!')
        ),
      ),
    );
  }
}
