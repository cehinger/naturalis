import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHeader extends StatefulWidget {
  const MyHeader({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  State<MyHeader> createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 30.0),
        width: double.infinity,
        decoration: BoxDecoration(
          border: const Border(
            bottom: BorderSide(width: 2.0, color: Colors.orange),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 50,
              offset: Offset(5, 10), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white54
                      ),
                    ),
                  ],
                ),
              ]),
        ));
  }
}
