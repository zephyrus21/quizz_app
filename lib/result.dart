import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function() resetQuiz;

  Result(this.result, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              "Your Score - $result",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            TextButton(
              child: Text("Reset Quiz"),
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.amber),
              onPressed: resetQuiz,
            )
          ],
        ),
      ),
    );
  }
}
