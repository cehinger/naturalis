import 'package:flutter/material.dart';
import 'package:naturalis/Widget/MyHeader.dart';
import 'package:naturalis/landing.dart';
import 'package:naturalis/playing_quiz.dart';

import 'Widget/QuizCategory.dart';

class MyQuizPage extends StatefulWidget {
  const MyQuizPage({super.key});

  @override
  State<MyQuizPage> createState() => _MyQuizPageState();
}

class _MyQuizPageState extends State<MyQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const MyHeader(
              title: "Quizzes sur la Nature",
              description: "description",
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const <Widget>[
                    QuizCategory(label: 'Insectes', sublabel: "(8 quizzes)", assetImage: 'assets/images/beetle.svg'),
                    QuizCategory(label: 'Champignons', sublabel: "(8 quizzes)", assetImage: 'assets/images/fungus.svg'),
                    QuizCategory(label: 'Plantes', sublabel: "(8 quizzes)", assetImage: 'assets/images/plant.svg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
