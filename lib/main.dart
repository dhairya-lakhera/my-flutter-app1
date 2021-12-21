import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  var questions = [
    {
      'questionText': 'What is the color of sky?',
      'answer': [
        'red',
        'blue',
        'green',
        'yelllow',
      ]
    },
    {
      'questionText': 'Which is the current indian odi team captain?',
      'answer': [
        'rohit',
        'kohli',
        'kl rahul',
        'ashwin',
      ]
    },
    {
      'questionText': 'How many months in a year?',
      'answer': [
        '9',
        '10',
        '11',
        '12',
      ]
    },
  ];

  build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app bar'),
      ),
      body: Column(children: [
        Question(questions[questionIndex]["questionText"].toString()),
        ...(questions[questionIndex]["answer"] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ]),
    ));
  }
}
