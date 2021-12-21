import 'package:flutter/material.dart';

class textBuilder extends StatelessWidget {
  final String text;
  final double textSize;
  final Color color;
  const textBuilder(
      {Key? key,
      required this.size,
      required this.text,
      required this.color,
      required this.textSize})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color,
          fontSize: size.height * textSize),
    );
  }
}
