import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconSize = 40.0;
    const double textSize = 30.0;
    const TextStyle textStyle = TextStyle(
      fontSize: textSize,
      color: Colors.red
    );

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        MyCard(
          icon: Icon(Icons.chat_rounded, color: Colors.pink, size: iconSize),
          text: Text('Chats', style: textStyle),
        ),
        MyCard(
          icon: Icon(Icons.login, color: Colors.purple, size: iconSize),
          text: Text('Sign in', style: textStyle),
        ),
        MyCard(
          icon: Icon(Icons.schedule, color: Colors.yellow, size: iconSize),
          text: Text('Schedule', style: textStyle),
        ),
        MyCard(
          icon: Icon(Icons.settings, color: Colors.greenAccent, size: iconSize),
          text: Text('Settings', style: textStyle),
        ),
        MyCard(
          icon: Icon(Icons.computer, color: Colors.green, size: iconSize),
          text: Text('Computer', style: textStyle),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: column
        ),
      )
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.icon, required this.text});

  final Icon icon;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[text, icon],
          ),
        )
      )
    );
  }
}
