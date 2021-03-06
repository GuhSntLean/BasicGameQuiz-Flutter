import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String textQuestion;

  Question(this.textQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        textQuestion,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
