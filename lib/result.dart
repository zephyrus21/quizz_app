import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;

  Result(this.result);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Your Score - $result",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
