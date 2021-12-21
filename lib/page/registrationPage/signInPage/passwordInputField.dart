import 'package:flutter/material.dart';
import 'package:practice/page/registrationPage/signInPage/textFieldContainer.dart';

class passwordTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const passwordTextField({
    Key? key,
    required this.size,
    required this.onChanged,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return textFieldBox(
        size: size,
        child: TextField(
          obscureText: true,
          onChanged: onChanged,
          decoration: InputDecoration(
              hintText: 'Enter Password',
              icon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              border: InputBorder.none),
        ));
  }
}
