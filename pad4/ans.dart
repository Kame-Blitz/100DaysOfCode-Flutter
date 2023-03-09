import 'package:flutter/material.dart';

class Ans extends StatelessWidget {
  final VoidCallback onPressedFunc;
  Ans(this.onPressedFunc);
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onPressedFunc,
            child: Text('data'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            )));
  }
}
