import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalNote;
  final void Function() restartQuestions;

  Result(this.finalNote, this.restartQuestions);

  String pontuation() {
    return 'Sua nota final foi $finalNote de pontos';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Text(
          'Parabens !\n${pontuation()}',
          style: TextStyle(fontSize: 20),
        )),
        FlatButton(
          onPressed: restartQuestions,
          child: Text('Reiniciar'),
          color: Colors.blue,
        ),
      ],
    );
  }
}
