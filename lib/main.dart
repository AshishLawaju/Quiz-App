import 'package:flutter/material.dart';
import 'package:quizapp/result.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

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
  var _totalScore = 0;
  _answerQuestion(int score) {
    _totalScore = _totalScore + score;

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
      'answer': [
        {'text': 'Black ', 'score': '10'},
        {'text': 'Red', 'score': '5'},
        {'text': 'White', 'score': '4'},
        {'text': 'green', 'score': '1'}
      ]
    },
    {
      'questionText': 'what\'s you favorite animal',
      'answer': [
        {'text': 'rabbit ', 'score': '2'},
        {'text': 'Snake', 'score': '6'},
        {'text': 'Lion', 'score': '10'},
        {'text': 'elp', 'score': '8'}
      ]
    },
    {
      'questionText': 'what\'s you favorite instructor',
      'answer': [
        {'text': 'max ', 'score': '2'},
        {'text': 'max', 'score': '2'},
        {'text': 'max', 'score': '2'},
        {'text': 'max', 'score': '2'}
      ]
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
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore)));
  }
}
// 