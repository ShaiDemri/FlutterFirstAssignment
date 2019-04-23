import 'package:flutter/material.dart';

import './TextDisplayer.dart';

class TextController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextController();
  }
}

class _TextController extends State<TextController> {
  List<String> _textToDispley = [];
  @override
  void initState() {
    super.initState();
    _textToDispley.add("Text that changes when the button is clicked.");
  }

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          color: Color.fromRGBO(255, 100, 100, 1.0),
          onPressed: () {
            handleTextChange();
          },
          child: Text("Push me, I'm a Button!"),
        ),
        TextDisplayer(_textToDispley[_time])
      ],
    );
  }
}
