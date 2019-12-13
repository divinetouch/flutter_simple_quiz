import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//runApp(
//MyApp(),
//);
//}

// one liner application
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  //const compiled time constant
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s you favorite animal',
      'answer': [
        {'text': 'Rabit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ]
    },
    {
      'questionText': "Who's your favorite instructor",
      'answer': [
        {'text': 'Max', 'score': 1},
        {'text': 'Mom', 'score': 1},
        {'text': 'Dad', 'score': 1},
        {'text': 'Uncle', 'score': 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
