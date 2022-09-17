import 'package:flutter/material.dart';

void main() {
  runApp(const UsingThemeApp());
}

class UsingThemeApp extends StatelessWidget {
  const UsingThemeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Using Theme'),
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.yellow),
          child:  Center(
            child: Container(
              color: Theme.of(context).colorScheme.secondary,
              child: const Text(
                'Hello world!',
                style: TextStyle(color: Colors.pink, fontSize: 30),
              ),
            )
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
