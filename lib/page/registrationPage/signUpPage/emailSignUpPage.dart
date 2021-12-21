import 'package:flutter/material.dart';
import 'package:practice/page/components/roundedButton.dart';
import 'package:practice/page/registrationPage/signInPage/inputFieldContainer.dart';
import 'package:practice/page/registrationPage/signUpPage/emailSignUpInfoPage.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';

class emailSignUpPage extends StatefulWidget {
  const emailSignUpPage({Key? key}) : super(key: key);

  @override
  _emailSignUpPageState createState() => _emailSignUpPageState();
}

class _emailSignUpPageState extends State<emailSignUpPage> {
  final thisController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.blue,
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                    right: 50,
                    bottom: 175,
                    child: Container(
                      height: size.height * 0.6,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          textBuilder(
                              size: size,
                              text: "SIGN UP",
                              color: Colors.black,
                              textSize: 0.03),
                          textBuilder(
                              size: size,
                              text: "with an email",
                              color: Colors.purple,
                              textSize: 0.025),
                          Align(
                            alignment: Alignment(-0.5, 0),
                            child: textBuilder(
                                size: size,
                                text: "EMAIL",
                                color: Colors.black,
                                textSize: 0.025),
                          ),
                          inputTextField(
                              size: size,
                              thisController: thisController,
                              hintText: 'Email',
                              onChanged: (String value) {}),
                          roundedButton(
                              text: 'Next',
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          emailSignUpInfoPage() //can customize directed page
                                      )))
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
