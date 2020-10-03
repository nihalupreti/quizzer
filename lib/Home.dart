import 'package:flutter/material.dart';
import './result.dart';
import './questions.dart';
import './answer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int questionIndex = 0;
  int questionCount = 1;
  int totalScore = 0;

  onPressed(int score) {
    totalScore += score;
    print(totalScore);

    setState(() {
      questionIndex += 1;
      questionCount += 1;
    });
  }

  onReset() {
    setState(() {
      totalScore = 0;
      questionCount = 1;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return questionIndex < questions.length
        ? Scaffold(
            body: Column(
              children: [
                SafeArea(
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Question ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                      color: Color.fromRGBO(140, 149, 190, 100),
                                      fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: questionCount.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "/${questions.length.toString()}",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    color: Color.fromRGBO(140, 149, 190, 100),
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 1000,
                  child: Divider(
                    color: Colors.white,
                    indent: 40,
                    endIndent: 40,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      questions[questionIndex]['question'],
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                SizedBox(height: 90),
                ...(questions[questionIndex]['answer']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return Answer(
                      () => onPressed(answer['score']), answer['answers']);
                }).toList()
              ],
            ),
          )
        : Results(onReset, totalScore);
  }
}
