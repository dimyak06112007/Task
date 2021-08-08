import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const questions = const [
    {
      'questionText': "What is your favorite car brand?",
      'answers': [
        {'text': 'Mercedes', 'score': 6},
        {'text': 'BMW', "score": 9},
        {'text': 'Toyota', 'score': 4}
      ]
    },
    {
      'questionText': "What is your favorite season?",
      'answers': [
        {'text': 'summer', 'score': 10},
        {'text': 'winter', 'score': 8},
        {'text': 'spring', 'score': 6}
      ]
    },
    {
      'questionText': "What is your favorite clothes?",
      'answers': [
        {'text': 'sneakers', 'score': 10},
        {'text': 'pajamas ', 'score': 1},
        {'text': 'jeans', 'score': 5}
      ]
    },
  ];
  var q_index = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      q_index = q_index + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      q_index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: q_index < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                q_index: q_index,
                questions_: questions)
            : Result(_totalScore, _resetQuiz));
  }
}
