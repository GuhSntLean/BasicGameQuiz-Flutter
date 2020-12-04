import 'package:flutter/material.dart';

main() {
  runApp(new QuestionApp());
}

class QuestionAppState extends State<QuestionApp> {
  var valueState = 0;

  void response() {
    valueState++;
    print(valueState);
  }

  void longResponse() {
    valueState--;
    print(valueState);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question application'),
        ),
        body: Column(
          children: <Widget>[
            Text('Olha lá'),
            RaisedButton(
              child: Text(
                'Teste',
              ),
              color: Colors.pink,
              onPressed: response,
              onLongPress: longResponse,
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
