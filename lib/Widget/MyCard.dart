import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({
    super.key,
    required this.label,
    required this.sublabel,
  });

  final String label;
  final String sublabel;

  @override
  State<MyCard> createState() => _MyCardState();

  void onTap() {

  }
}

class _MyCardState extends State<MyCard> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(
              color: Colors.orange,
              width: 2.0,
            ),
          ),
          child: Column(
            children: [
              Text(
                widget.label,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.sublabel,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]
          )
      );
  }
}
