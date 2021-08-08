import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions_;
  final int q_index;
  final Function answerQuestion;
  Quiz({
    required this.questions_,
    required this.answerQuestion,
    required this.q_index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question((questions_[q_index]['questionText'] as String)),
        ...(questions_[q_index]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['score']), (answer["text"] as String));
        }).toList()
      ],
    );
  }
}
