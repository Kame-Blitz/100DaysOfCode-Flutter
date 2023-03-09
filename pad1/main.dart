import 'package:flutter/material.dart';

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
  var qs = <String>[
    'color',
    'animal',
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
            Qs(qs[_ind]),
            ElevatedButton(onPressed: ans, child: Text('hi')),
            ElevatedButton(onPressed: ans, child: Text('hi')),
            ElevatedButton(onPressed: ans, child: Text('hi'))
          ],
        ),
      ),
    );
  }
}
