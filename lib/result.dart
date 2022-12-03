import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;

  Result(this.resultScore);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Pass';
    } else {
      resultText = 'fail';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("No more question"),
    );
  }
}
