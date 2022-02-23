import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(_MyApp());

// ignore: use_key_in_widget_constructors
class _MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<_MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Giraffe', 'score': 4},
        {'text': 'Rhino', 'score': 1},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Dog', 'score': 6}
      ]
    },
    {
      'questionText': 'What is your favorite sport ?',
      'answers': [
        {'text': 'Rugby', 'score': 4},
        {'text': 'Basketball', 'score': 1},
        {'text': 'Soccer', 'score': 5},
        {'text': 'Table Tennis', 'score': 6}
      ]
    },
    {
      'questionText': 'What is your favorite TV Show',
      'answers': [
        {'text': 'Friends', 'score': 4},
        {'text': 'GOT', 'score': 1},
        {'text': 'Paradise PD', 'score': 5},
        {'text': 'Murder Mystery', 'score': 6}
      ]
    },
    {
      'questionText': 'What is your favorite beverage',
      'answers': [
        {'text': 'Coffee', 'score': 4},
        {'text': 'Tea', 'score': 1},
        {'text': 'Fruit Juice', 'score': 5},
        {'text': 'Whisky', 'score': 6}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Flutter page'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
