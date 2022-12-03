import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      selectHandler; //final run huda lock hunxa  pahela k hunxa taha hunna final value
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
