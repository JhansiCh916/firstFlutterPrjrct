import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionsIndex;

  quiz(@required this.questions, @required this.answerQuestion, @required this.questionsIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionsIndex]["questions"] as String,
        ),
        // ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.brown))
        // ,onPressed: _answerQuestion ,
        //     child: Text("Answer 1")),
        // ElevatedButton(style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.brown)),
        // onPressed: () {},
        //     child: Text("Answer 2")),
        // ElevatedButton(onPressed: () {},
        //     child: Text("Answer 3")),
        // ElevatedButton(onPressed: null,
        //     child: Text("Answer 4")),
        // ElevatedButton(onPressed: () {},
        //     child: Text("Answer 5")),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        ...(questions[questionsIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer["score"]), answer["text"] as String);
        }).toList()
      ],
    ) ;
  }
}
