import 'package:flutter/material.dart';

//widget for creating entire textfield box
class textFieldBox extends StatelessWidget {
  final Widget child;
  const textFieldBox({
    Key? key,
    required this.size,
    required this.child,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.225,
      height: size.height * 0.05,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Color(0xFFE9F8ED)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: child,
    );
  }
}
