import 'package:flutter/material.dart';

class TextDisplayer extends StatelessWidget {
  final String textToDispley;

  TextDisplayer(this.textToDispley);

  @override
  Widget build(BuildContext context) {
    return Text(
      textToDispley,
      textAlign: TextAlign.center,
    );
  }
}
