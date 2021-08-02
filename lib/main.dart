import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  void _answerQuestion() {
    setState(() {
      _qIndex++;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's your favorite color?",
      "What's your favorite number?"
    ];
    //    var _questions = [
    //   {
    //     'questionText': 'What\'s your favorite color?',
    //     'answers': ['Black', 'Red', 'Green', 'White'],
    //   },
    //   {
    //     'questionText': 'What\'s your favorite animal?',
    //     'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    //   },
    //   {
    //     'questionText': 'Who\'s your favorite instructor?',
    //     'answers': ['Max', 'Max', 'Max', 'Max'],
    //   },
    // ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz App"),
        ),
        body: Column(
          children: [
            Question(
              _questions[_qIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
