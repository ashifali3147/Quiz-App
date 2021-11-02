import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What is your favorate color?',
      'answer': [
        {'text': 'Red', 'score': 5},
        {'text': 'Gray', 'score': 4},
        {'text': 'Blue', 'score': 1},
        {'text': 'Green', 'score': 3}
      ],
    },
    {
      'questionText': 'What is your fav pet name ?',
      'answer': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Parrot', 'score': 2},
        {'text': 'Dog', 'score': 4},
        {'text': 'Cat', 'score': 5}
      ],
    },
    {
      'questionText': 'What is your favorate language?',
      'answer': [
        {'text': 'Java', 'score': 2},
        {'text': 'Python', 'score': 1},
        {'text': 'Dart', 'score': 3},
        {'text': 'C', 'score': 5}
      ],
    },
  ];

  int qIndex = 0;
  int totalScore = 0;

  void resetScore() {
    setState(() {
      qIndex = 0;
      totalScore = 0;
    });
  }

  void answerQ(int score) {
    setState(() {
      qIndex += 1;
    });
    totalScore += score;
    print(totalScore);
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('1st App'),
          centerTitle: true,
        ),
        body: qIndex < questions.length
            ? Quiz(questions: questions, qIndex: qIndex, answerQ: answerQ)
            : Result(totalScore, resetScore),
      ),
    );
  }
}
