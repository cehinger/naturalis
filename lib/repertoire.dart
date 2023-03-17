import 'package:flutter/material.dart';
import 'package:naturalis/landing.dart';

import 'Widget/MyHeader.dart';

class MyRepertoryPage extends StatefulWidget {
  const MyRepertoryPage({super.key});

  @override
  State<MyRepertoryPage> createState() => _MyRepertoryPageState();
}

class _MyRepertoryPageState extends State<MyRepertoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const MyHeader(
              title: "Répertoire d'éspèces",
              description: "description",
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const <Widget>[

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
