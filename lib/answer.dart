import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function whenPressed;
  final String answer;

  Answer(this.whenPressed, this.answer);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GestureDetector(
        onTap: whenPressed,
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 3, color: Theme.of(context).accentColor),
          ),
          child: Center(
            child: Text(answer),
          ),
        ),
      ),
    );
  }
}
