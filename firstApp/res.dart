import 'package:flutter/material.dart';

class Res extends StatelessWidget {
  final int resScore;
  final VoidCallback func;

  const Res(this.resScore, this.func, {super.key});

  String get resPhrase {
    String resText;
    if (resScore <= 8) {
      resText = 'awesome';
    } else if (resScore <= 12) {
      resText = 'cool';
    } else if (resScore <= 16) {
      resText = 'fine';
    } else {
      resText = 'ok';
    }
    resText = 'Completed! $resText';
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$resPhrase. Total Score:',
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                '$resScore',
                style: const TextStyle(fontSize: 36),
                textAlign: TextAlign.center,
              ),
              OutlinedButton(onPressed: func, style: OutlinedButton.styleFrom(foregroundColor: Colors.orange, side: const BorderSide(color: Colors.orange)), child: const Text('Restart'))
            ]));
  }
}
