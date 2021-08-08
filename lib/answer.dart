import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandleFunc;
  final String answerText;

  Answer(this.selectHandleFunc, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(answerText),
          onPressed: () {
            selectHandleFunc();
            print("clicked");
          }),
    );
  }
}
