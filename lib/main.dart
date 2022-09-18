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
      home: MyEditText(),
    );
  }
}

class MyEditText extends StatefulWidget {
  const MyEditText({Key? key}) : super(key: key);

  @override
  State<MyEditText> createState() => _MyEditTextState();
}

class _MyEditTextState extends State<MyEditText> {
  String results = '';

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using EditText'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter text here...'
                ),
                onSubmitted: (String str) {
                  setState(() {
                    results = "$results\n$str";
                    controller.text = '';
                  });
                },
                controller: controller,
              ),
              Text(results)
            ],
          ),
        ),
      ),
    );
  }
}

