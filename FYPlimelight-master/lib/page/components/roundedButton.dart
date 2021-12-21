import 'package:flutter/material.dart';

class roundedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color textColor;
  final Color color;
  const roundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.limeAccent,
    //this.color=Color(0xFFE9F8ED),
    //this.color=Color(0xFFE9F8ED),
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.15,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            onPressed: onPressed,
            color: Color(0xFFE9F8ED),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          )),
    );
  }
}
