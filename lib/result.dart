// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  // ignore: use_key_in_widget_constructors
  const Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You\'re likable and innocent ';
    } else if (totalScore <= 10) {
      resultText = 'Kind Mundane';
    } else if (totalScore > 15) {
      resultText = 'Weird & Strange';
    } else {
      resultText = 'Just consuming oxygen';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetQuiz,
          child: const Text(
            "Reset Quiz ♻️",
          ),
        )
      ]),
    );
  }
}
