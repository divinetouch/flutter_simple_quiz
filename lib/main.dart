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
      'answer': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s you favorite animal',
      'answer': ['Rabit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': "Who's your favorite instructor",
      'answer': ['Max', 'Divine', 'Din', 'Mom', 'Dad']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
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
            : Result(),
      ),
    );
  }
}
