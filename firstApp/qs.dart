import 'package:flutter/material.dart';

class Qs extends StatelessWidget {
  final String? _qs;
  const Qs(this._qs, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text('$_qs',
            style: TextStyle(fontSize: 28), textAlign: TextAlign.center));
  }
}
