import 'package:flutter/material.dart';
import 'widgets/quiz.dart';
import 'widgets/result.dart';

main() => runApp(new QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  int _selectionQuestion = 0;

  final _answers = const [
    {
      'question': 'Qual é a sua cor favorita ?',
      'qanswer': [
        {'text': 'Preto', 'note': 10},
        {'text': 'Vermelho', 'note': 10},
        {'text': 'Verde', 'note': 10},
        {'text': 'Branco', 'note': 10}
      ],
    },
    {
      'question': 'Qual é o seu animal favorito ?',
      'qanswer': [
        {'text': 'Coelho', 'note': 10},
        {'text': 'Cobra', 'note': 10},
        {'text': 'Elefante', 'note': 10},
        {'text': 'Leão', 'note': 10}
      ],
    },
    {
      'question': 'Qual é o seu curso favorito ?',
      'qanswer': [
        {'text': 'ADS', 'note': 10},
        {'text': 'ENG-E', 'note': 10},
        {'text': 'ENG-M', 'note': 10},
        {'text': 'ENGE-C', 'note': 10}
      ],
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
