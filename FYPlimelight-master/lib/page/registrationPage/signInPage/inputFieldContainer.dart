import 'package:flutter/material.dart';
import 'package:practice/page/registrationPage/signInPage/textFieldContainer.dart';

//inputTextFieldWidget
class inputTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const inputTextField({
    Key? key,
    required this.size,
    required this.thisController,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  final Size size;
  final TextEditingController thisController;

  @override
  Widget build(BuildContext context) {
    return textFieldBox(
      size: size,
      child: TextField(
        onChanged: onChanged,
        obscureText: false,
        controller: thisController,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              icon,
              color: Colors.grey,
            ),
            border: InputBorder.none),
        //reading input/getting user input
        onSubmitted: (String value) async {},
      ),
    );
  }
}
