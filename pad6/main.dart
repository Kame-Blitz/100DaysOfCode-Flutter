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
      'anst': [
        'rabbit',
        'blue bird',
        'giraffe',
      ]
    },
    {
      'qst': '69',
      'anst': [
        'Yes',
        'No',
      ]
    },
  ];

  void ans() {
    setState(() {
      _ind++;
    });
    debugPrint('$_ind');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('App')),
        body: Column(
          children: [
            Qs(qs[_ind]['qst'] as String),
            ...(qs[_ind]['anst'] as List<String>).map((answ) {
              return Ans(ans, answ);
            }).toList()
          ],
        ),
      ),
    );
  }
}
