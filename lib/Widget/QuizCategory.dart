import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class QuizCategory extends StatefulWidget {
  const QuizCategory({
    super.key,
    required this.label,
    required this.sublabel,
    required this.assetImage,
  });

  final String label;
  final String sublabel;
  final String assetImage;

  @override
  State<QuizCategory> createState() => _QuizCategoryState();

}

class _QuizCategoryState extends State<QuizCategory> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 10,
          blurRadius: 50,
          offset: const Offset(5, 10), // changes position of shadow
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 60,
                      height: 60,
                      child: SvgPicture.asset(widget.assetImage)
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.label,
                        style: const TextStyle(
                            fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
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
