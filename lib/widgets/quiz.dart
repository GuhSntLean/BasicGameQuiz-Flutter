import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> answers;
  final int selectionQuestion;
  final void Function() response;

  Quiz({
    @required this.answers,
    @required this.selectionQuestion,
    @required this.response,
  });

  bool get haveSelectionQuestion {
    return selectionQuestion < answers.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answer =
        haveSelectionQuestion ? answers[selectionQuestion]['qanswer'] : null;

    return Column(
      children: <Widget>[
        Question(answers[selectionQuestion]['question']),
        ...answer.map((text) => Answer(text, response)).toList(),
      ],
    );
  }
}
