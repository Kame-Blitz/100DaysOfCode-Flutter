import 'package:flutter/material.dart';
import 'ans.dart';
import 'qs.dart';

class Qui extends StatelessWidget {
  final Function inc;
  final List<Map<String, Object>> qs;
  final int ind;

  const Qui({super.key, required this.inc, required this.qs, required this.ind});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Qs(qs[ind]['questionText'] as String),
        ...(qs[ind]['answers'] as List<Map<String, Object>>).map((answ) {
          return Ans(() {
            inc(answ['score']);
          }, answ['text'] as String);
        }).toList()
      ],
    );
  }
}
