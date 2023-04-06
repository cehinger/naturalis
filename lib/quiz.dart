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

  String _mode = "SELECTION";

  Widget quizSelection() {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            InkWell(
                onTap: () { handleSelectQuiz("QUIZ_INSECTA");},
                child: QuizCategory(label: 'Insectes', sublabel: "(8 quizzes)", assetImage: 'assets/images/beetle.svg')
            ),
            InkWell(
                onTap: () { handleSelectQuiz("QUIZ_FUNGI");},
                child: QuizCategory(label: 'Champignons', sublabel: "(8 quizzes)", assetImage: 'assets/images/fungus.svg')
            ),
            InkWell(
                onTap: () { handleSelectQuiz("QUIZ_PLANTAE");},
                child: QuizCategory(label: 'Plantes', sublabel: "(8 quizzes)", assetImage: 'assets/images/plant.svg')
            ),
          ],
        ),
      ),
    );
  }

  Widget switchWidget(String mode){
    switch (mode) {
      case 'SELECTION': return quizSelection();
      case 'QUIZ_INSECTA': return const MyPlayingQuizPage(title: "Insectes");
      case 'QUIZ_FUNGI': return const MyPlayingQuizPage(title: "Champignons");
      case 'QUIZ_PLANTAE': return const MyPlayingQuizPage(title: "Plantes");
      default : return quizSelection();
    }
  }

  void handleSelectQuiz(String context) {
      setState(() {
        _mode = context;
      });
  }

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
            switchWidget(_mode),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
