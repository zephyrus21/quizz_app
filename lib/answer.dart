import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() answerHandler;

  Answer(this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: answerHandler,
        child: Text("Answer 1"),
      ),
    );
  }
}
