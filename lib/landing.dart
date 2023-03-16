import 'package:flutter/material.dart';
import 'package:naturalis/Widget/MyCard.dart';

class MyLandingPage extends StatelessWidget {
  final Function(int val) redirectionFunction;

  const MyLandingPage({
    super.key,
    required this.redirectionFunction,
  });

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text("Naturalis",
                      style: TextStyle(
                        fontSize: 35,
                      )
                  ),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {redirectionFunction(1);},
                  child: const MyCard(
                    label: "Quiz",
                    sublabel: "(24 quizzes)",
                  ),
                ),
                InkWell(
                  onTap: () {redirectionFunction(2);},
                  child: const MyCard(
                    label: "Répertoire d'éspèces",
                    sublabel: "(150 éspèces)",
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}




