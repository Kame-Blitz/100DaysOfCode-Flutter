import 'package:flutter/material.dart';

class Qs extends StatelessWidget {
  final String? _qs;
  Qs(this._qs);
  @override
  Widget build(BuildContext context) {
    return Text('$_qs');
  }
}
