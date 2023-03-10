import 'package:flutter/material.dart';
import 'qui.dart';
import 'res.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _ind = 0;
  var _totalScore = 0;
  var qs = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
  ];
  void _reset() {
    setState(() {
      _ind = 0;
      _totalScore = 0;
    });
  }

  void inck(int score) {
    _totalScore += score;
    setState(() {
      _ind++;
    });
  }

  Widget? retwid() {
    if (_ind < qs.length) {
      return Qui(
        inc: inck,
        qs: qs,
        ind: _ind,
      );
    } else {
      return Res(_totalScore, _reset);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('App')),
        body: retwid(),
      ),
    );
  }
}
