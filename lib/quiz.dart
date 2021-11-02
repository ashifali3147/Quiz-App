import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final Function answerQ;
  final int qIndex;
  Quiz({required this.questions, required this.qIndex, required this.answerQ});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qIndex]['questionText'] as String,
        ),
        ...(questions[qIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQ(answer['score']), answer['text'].toString());
        }).toList()
      ],
    );
  }
}
