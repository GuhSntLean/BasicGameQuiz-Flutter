import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textQuestion;
  final void Function() onSelection;

  Answer(this.textQuestion, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.black,
        child: Text(textQuestion),
        onPressed: onSelection,
      ),
    );
  }
}
