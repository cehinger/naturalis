import 'package:flutter/material.dart';
import 'package:naturalis/Widget/MyCard.dart';
import 'package:naturalis/Widget/MyHeader.dart';

class MyLandingPage extends StatelessWidget {
  final Function(int val) redirectionFunction;

  const MyLandingPage({
    super.key,
    required this.redirectionFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const MyHeader(
              title: "Naturalis",
              description: "description",
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        redirectionFunction(1);
                      },
                      child: const SizedBox(
                        width: 200,
                        height: 200,
                        child: MyCard(
                          label: "Quiz",
                          sublabel: "(24 quizzes)",
                          assetImage: "assets/images/quizCard.svg",
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        redirectionFunction(2);
                      },
                      child: const SizedBox(
                        width: 200,
                        height: 200,
                        child: MyCard(
                          label: "Répertoire",
                          sublabel: "(150 éspèces)",
                          assetImage: "assets/images/repertoryCard.svg",
                        ),
                      ),
                    ),
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
