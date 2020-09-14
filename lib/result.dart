import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalResult;
  final Function resetHandler;
  Result(this.totalResult, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it";
    if (totalResult <= 8) {
      resultText = 'Score : $totalResult \n You are awesome and innocent!!';
    } else if (totalResult <= 12) {
      resultText = 'Score : $totalResult \n Pretty likable';
    } else if (totalResult <= 16) {
      resultText = 'Score : $totalResult \n You are ... strange';
    } else {
      resultText = 'Score : $totalResult \n  You are so bad!  ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          FlatButton(child: Text('Restart Quiz'), onPressed: resetHandler)
        ],
      ),
    );
  }
}
