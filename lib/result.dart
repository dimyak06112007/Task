import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 13) {
      resultText = 'You are independent and calm!';
    } else if (resultScore <= 22) {
      resultText = 'You are a dreamer and high achiever!';
    } else {
      resultText = 'You are very cool!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(         
      children: [
        Container(
            margin: EdgeInsets.only(top: 120),
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )),
        ElevatedButton(
            onPressed: () {
              resetHandler();
            },
            child: Text("Restart Quiz!")),
      ],
    ));
  }
}
// onPressed: ()=> resetHandler,