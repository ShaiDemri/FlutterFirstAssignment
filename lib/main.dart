import 'package:flutter/material.dart';

import './TextController.dart';

void main() => runApp(TextApp());

class TextApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextView();
  }
}

class _TextView extends State<TextApp> {
  final List<String> _textToDispley = [
    "Text that changes when the button is clicked."
  ];
  int _time = 0;
  handleTextChange() {
    _time = (_time + 1) % 2;
    setState(() {
      _textToDispley.add("The text is changed!!!!");
    });
    _textToDispley.length - 1 == 2 ? _textToDispley.removeAt(2) : null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("TextApp"),
            centerTitle: true,
          ),
          body: TextController()),
    );
  }
}
