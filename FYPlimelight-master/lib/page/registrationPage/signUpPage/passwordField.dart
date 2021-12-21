import 'package:flutter/material.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';

class passwordField extends StatelessWidget {
  const passwordField({
    Key? key,
    required this.size,
    required this.thisController,
  }) : super(key: key);

  final Size size;
  final TextEditingController thisController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.33,
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textBuilder(
            size: size,
            text: 'PASSWORD',
            textSize: 0.02,
            color: Colors.black,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          textBuilder(
              size: size,
              text: 'Make Strong Password',
              color: Colors.black,
              textSize: 0.015),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            'Passwords should be 8 characters long at minimum, and contain a mixture of alphanumeric characters and other symbols!',
            style: TextStyle(fontSize: size.height * 0.015),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Container(
            height: size.height * 0.045,
            width: size.width * 0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFE9F8ED)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextField(
              controller: thisController,
              decoration: InputDecoration(
                  hintText: 'PASSWORD',
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
