import 'package:flutter/material.dart';
import 'widgets/Quiz.dart';
import 'widgets/Result.dart';

main() => runApp(new QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  int _selectionQuestion = 0;
  int _totalNote = 0;

  final _answers = const [
    {
      'question': 'Qual é a sua cor favorita ?',
      'qanswer': [
        {'text': 'Preto', 'note': 10},
        {'text': 'Vermelho', 'note': 5},
        {'text': 'Verde', 'note': 3},
        {'text': 'Branco', 'note': 1}
      ],
    },
    {
      'question': 'Qual é o seu animal favorito ?',
      'qanswer': [
        {'text': 'Coelho', 'note': 10},
        {'text': 'Cobra', 'note': 5},
        {'text': 'Elefante', 'note': 3},
        {'text': 'Leão', 'note': 1}
      ],
    },
    {
      'question': 'Qual é o seu curso favorito ?',
      'qanswer': [
        {'text': 'ADS', 'note': 10},
        {'text': 'ENG-E', 'note': 5},
        {'text': 'ENG-M', 'note': 3},
        {'text': 'ENGE-C', 'note': 1}
      ],
    },
  ];

  void _response(int note) {
    if (haveSelectionQuestion) {
      setState(() {
        _selectionQuestion++;
        _totalNote += note;
      });
    }
  }

  void _restartQuestion() {
    setState(() {
      _selectionQuestion = 0;
      _totalNote = 0;
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
            : Result(_totalNote, _restartQuestion),
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
