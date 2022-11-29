import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void ansQues() {
    print("answer chosen !");
  }

  @override
  Widget build(BuildContext context) {
    var ques = ['what\'s your favorite color', 'what\'s you favorite animal'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        children: [
          Text("The question !"),
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