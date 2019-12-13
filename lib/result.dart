import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  //getter
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      return resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      return resultText = 'Pretty Likeable';
    } else if (resultScore <= 16) {
      return resultText = 'You are .... strange';
    } else {
      return resultText = 'You are so bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
