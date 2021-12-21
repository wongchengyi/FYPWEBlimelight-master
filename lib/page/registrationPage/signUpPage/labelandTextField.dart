import 'package:flutter/material.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';

import 'emailSignUpPage.dart';

class labelandTextField extends StatelessWidget {
  final String labelText, hintText;
  final double textFieldSize;
  //final double boxsize;
  const labelandTextField({
    Key? key,
    required this.size,
    required this.thisController,
    required this.labelText,
    required this.hintText,
    required this.textFieldSize,
    //required this.boxsize,
  }) : super(key: key);

  final Size size;
  final TextEditingController thisController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldSize,
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textBuilder(
            size: size,
            text: labelText,
            textSize: 0.02,
            color: Colors.black,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Container(
            height: size.height * 0.045,
            width: textFieldSize,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFE9F8ED)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextField(
              controller: thisController,
              decoration: InputDecoration(
                  hintText: hintText,
                  alignLabelWithHint: true,
                  border: InputBorder.none),
              onSubmitted: (String value) async {},
            ),
          )
        ],
      ),
    );
  }
}
