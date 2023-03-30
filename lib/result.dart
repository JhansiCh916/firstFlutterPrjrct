import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int totalResultScore;
  final VoidCallback resetQuiz;

  result(this.totalResultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalResultScore < 10) {
      resultText = "you are working hard";
    } else if (totalResultScore < 12) {
      resultText = "you are working pretty good";
    } else if (totalResultScore < 16) {
    resultText = "you are working must be improvised";
    } else {
    resultText = "you are working bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Center(child: Text(resultPhrase,
        style: TextStyle(fontSize: 24),),
        ),
        TextButton(onPressed: resetQuiz, child: Text("Reset quiz")),
        OutlinedButton(onPressed: null, child: Text("OutlinedButton"),style: OutlinedButton.styleFrom(
          foregroundColor: Colors.red,backgroundColor: Colors.greenAccent, side: BorderSide(color: Colors.orange),
        ),)
      ],
    );
  }
}
