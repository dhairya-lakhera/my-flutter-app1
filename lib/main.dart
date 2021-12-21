import 'package:flutter/material.dart';

import './question.dart';

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

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questions = ["Question1", "Question2"];

  build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app bar'),
      ),
      body: Column(children: [
        Question(questions[questionIndex]),
        RaisedButton(
          child: Text('Answer1'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Answer2'),
          onPressed: () => print('Answer 2 choosen'),
        ),
        RaisedButton(
          child: Text('Answer2'),
          onPressed: () => print('Answer 3 choosen'),
        ),
      ]),
    ));
  }
}
