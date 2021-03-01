import 'package:flutter/material.dart';
import 'Answer.dart';
import 'Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> answers;
  final int selectionQuestion;
  final void Function(int) response;

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
    List<Map<String, Object>> answer =
        haveSelectionQuestion ? answers[selectionQuestion]['qanswer'] : null;

    return Column(
      children: <Widget>[
        Question(answers[selectionQuestion]['question']),
        ...answer.map((text) {
          return Answer(
            text['text'],
            () => response(text['note']),
          );
        }).toList(),
      ],
    );
  }
}
