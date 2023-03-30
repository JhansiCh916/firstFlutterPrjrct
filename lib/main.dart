import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  var totalScore = 0;

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionsIndex = 0;
     totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var questions = ["Who are you?", "Where are you going?"];
    //instead of using lists here we can use map to give questions and answers.
    var _questions = [
      {
        "questions": "Who's is your teacher?",
        "answers": [{"text": "MAX", "score": 10},{"text": "Cia", "score": 1},{"text": "karan", "score": 5}],
      },
      {
        "questions": "Who's is your Brother?",
        "answers": [{"text": "XXX", "score": 0},{"text": "YYY", "score": 10},{"text": "ZZZ", "score": 3}],
      },
      {
        "questions": "Who's is your best friend?",
        "answers": [{"text": "XCODE", "score": 10},{"text": "ANDROID STUDIO", "score": 4},{"text": "VS CODE", "score": 7}],
      },
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("It is a tab bar"),
                      backgroundColor: Colors.cyan,
      ),
      body: _questionsIndex < _questions.length ?
          quiz(_questions, _answerQuestion, _questionsIndex) : result(totalScore, resetQuiz),
    ),
    );
  }
}