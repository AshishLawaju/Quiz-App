import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _ansQues() {
    // ? can be null aslo
    if (_questionIndex < _questions.length) {
      print("we have more question !");
    }
    setState(() {
      _questionIndex++;
    });
  }

  final _questions = const [
    {
      'questionText': 'what\'s your favorite color',
      'answer': ['Black ', 'Red', 'White', 'green']
    },
    {
      'questionText': 'what\'s you favorite animal',
      'answer': ['rabbit ', 'Snake', 'Lion', 'elp']
    },
    {
      'questionText': 'what\'s you favorite instructor',
      'answer': ['max ', 'max', 'max', 'max']
    },
  ];

  List<String> question = ["What your fav colo?", "what your fav animal?"];
  @override
  Widget build(BuildContext context) {
    //questions = []; //deosenot work if const questions
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz App"),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _ansQues,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Center(
                    child: Text("No more question!"),
                  )));
  }
}
// 