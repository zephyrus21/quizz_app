import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var qIndex = 0;

  void answerQuestion() {
    setState(() {
      qIndex++;
      print(qIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite number?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz App"),
        ),
        body: Column(
          children: [
            Text(questions[qIndex]),
            Row(
              children: [
                ElevatedButton(
                    onPressed: answerQuestion, child: Text("Answer 1")),
                ElevatedButton(
                    onPressed: answerQuestion, child: Text("Answer 2")),
                ElevatedButton(
                    onPressed: answerQuestion, child: Text("Answer 3")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
