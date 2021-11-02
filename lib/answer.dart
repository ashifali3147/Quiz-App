import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() questionHandler;
  final String answerText;
  Answer(this.questionHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purpleAccent,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: questionHandler,
      ),
    );
  }
}
