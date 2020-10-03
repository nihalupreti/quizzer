import 'package:flutter/material.dart';
import './Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quizzer',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(37, 44, 74, 100),
        primaryColor: Colors.grey,
        accentColor: Color.fromRGBO(33, 69, 103, 100),
        textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
            headline6: TextStyle(color: Colors.white)),
      ),
      home: Home(),
    );
  }
}
