import 'package:flutter/material.dart';
import 'question.dart';

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
    setState(() {
      _questionIndex++;
    });
  }

  List<String> question = ["What your fav colo?", "what your fav animal?"];
  @override
  Widget build(BuildContext context) {
    var ques = ['what\'s your favorite color', 'what\'s you favorite animal'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Column(
        children: [
          Question(question[_questionIndex]),
          RaisedButton(
            onPressed: _ansQues, //passing pointer not function
            child: Text('answer 1'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Answer2'),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(onPressed: () {}, child: Text('answer3'))
        ],
      ),
    ));
  }
}
// 