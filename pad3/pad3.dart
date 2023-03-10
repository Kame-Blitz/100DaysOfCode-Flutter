// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'ans.dart';
import 'qs.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _ind = 0;
  var qs = [
    {
      'qst': 'color',
      'anst': [
        'red',
        'blue',
        'green',
      ]
    },
    {
      'qst': 'animals',
      'anst': ['rabbit', 'blue bird', 'giraffe', 'ok']
    },
    {
      'qst': '69',
      'anst': [
        'Yes',
        'No',
      ]
    },
  ];

  void inc() {
    setState(() {
      _ind++;
    });
  }

  Widget? retwid() {
    if (_ind < qs.length) {
      return Column(
        children: [
          Qs(qs[_ind]['qst'] as String),
          ...(qs[_ind]['anst'] as List<String>).map((answ) {
            return Ans(inc, answ);
          }).toList()
        ],
      );
    } else {
      return Center(
        child: Text('done'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('App')),
        body: retwid(),
      ),
    );
  }
}