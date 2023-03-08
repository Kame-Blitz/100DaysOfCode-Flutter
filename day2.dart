import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var ind = 0;
  var qs = <String>[
    'color',
    'animal',
  ];
  
  
  void ans() {
    setState(() {
      ind++;
    });
    debugPrint('$ind');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('App')),
        body: Column(
          children: [
            Text(qs[ind]),
            ElevatedButton(onPressed: ans, child: Text('hi')),
            ElevatedButton(onPressed: ans, child: Text('hi')),
            ElevatedButton(onPressed: ans, child: Text('hi'))
          ],
        ),
      ),
    );
  }
}
