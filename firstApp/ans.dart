import 'package:flutter/material.dart';

class Ans extends StatelessWidget {
  final VoidCallback onPressedFunc;
  final String ast;
  const Ans(this.onPressedFunc, this.ast, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: ElevatedButton(
            onPressed: onPressedFunc,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            child: Text(ast)));
  }
}
