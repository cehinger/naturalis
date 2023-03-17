import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatefulWidget {
  const MyCard({
    super.key,
    required this.label,
    required this.sublabel,
    required this.assetImage,
  });

  final String label;
  final String sublabel;
  final String assetImage;

  @override
  State<MyCard> createState() => _MyCardState();

  void onTap() {

  }
}

class _MyCardState extends State<MyCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 10,
          blurRadius: 50,
          offset: Offset(5, 10), // changes position of shadow
        ),
      ],
    ),
      child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: const BorderSide(
                color: Colors.orange,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(widget.assetImage),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      Text(
                        widget.label,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange
                        ),
                      ),
                      Text(
                        widget.sublabel,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white54
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            )
        ),
    );
  }
}
