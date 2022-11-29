import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void ansQues() {
    setState(() {
      questionIndex++;
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
          Text(question[questionIndex]),
          RaisedButton(
            onPressed: ansQues, //passing pointer not function
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