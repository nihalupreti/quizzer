import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final Function reset;
  final int ascore;
  Results(this.reset, this.ascore);

  String get allResult {
    String resultText;
    if (ascore == 50) {
      resultText = 'you got 50. keep it up';
    }
    if (ascore == 40) {
      resultText = 'you got $ascore nearly there';
    }
    if (ascore == 30) {
      resultText = 'you got $ascore satisfactory';
    }
    if (ascore == 20) {
      resultText = 'you got $ascore you need more practice';
    }
    if (ascore < 20) {
      resultText = 'you got $ascore dissatisfactory';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(allResult),
        ),
        RaisedButton(onPressed: reset, child: Text('Take the quiz again'))
      ],
    ));
  }
}
