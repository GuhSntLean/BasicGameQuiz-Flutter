import 'package:flutter/material.dart';
import 'widgets/quiz.dart';
import 'widgets/result.dart';

main() => runApp(new QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  int _selectionQuestion = 0;

  final _answers = const [
    {
      'question': 'Qual é a sua cor favorita ?',
      'qanswer': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'question': 'Qual é o seu animal favorito ?',
      'qanswer': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'question': 'Qual é o seu curso favorito ?',
      'qanswer': ['ADS', 'ENG-E', 'ENG-M', 'ENGE-C'],
    },
  ];

  void _response() {
    setState(() {
      _selectionQuestion++;
    });
  }

  bool get haveSelectionQuestion {
    return _selectionQuestion < _answers.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Question application', textAlign: TextAlign.center)),
        ),
        body: haveSelectionQuestion
            ? Quiz(
                answers: _answers,
                selectionQuestion: _selectionQuestion,
                response: _response,
              )
            : Result(),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
