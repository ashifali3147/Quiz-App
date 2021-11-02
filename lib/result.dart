import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultText {
    String resultText = '';
    if (resultScore <= 5) {
      resultText = 'You are innocent';
    } else if (resultScore <= 10) {
      resultText = 'You are Devil';
    } else {
      resultText = 'You are noob';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: (TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
