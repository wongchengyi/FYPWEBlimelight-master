import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/page/components/components.dart';
import 'package:practice/page/components/logoButton.dart';
import 'package:practice/page/components/roundedButton.dart';
import 'package:practice/page/registrationPage/signInPage/passwordInputField.dart';
import 'package:practice/page/registrationPage/signInPage/textFieldContainer.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';

import 'inputFieldContainer.dart';

class signInPage extends StatefulWidget {
  const signInPage({Key? key}) : super(key: key);

  @override
  _signInPageState createState() => _signInPageState();
}

class _signInPageState extends State<signInPage> {
  //crucial component in retrieving user's text in the search bar
  final thisController = TextEditingController();

  @override
  void dispose() {
    thisController.dispose();
    super.dispose();
  }

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
          decoration: kGradientColor,
          alignment: Alignment.center,
          child: Container(
            height: size.height * 0.85,
            width: size.width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 7,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                    )),
                Expanded(
                    flex: 5,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Log In",
                                style: TextStyle(
                                    fontSize: size.height * 0.025,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: size.height * 0.035),
                              socialMediaSignIn(
                                  context,
                                  'assets/images/googleLogo.png',
                                  'assets/images/googleLogo.png',
                                  'assets/images/googleLogo.png'),
                              SizedBox(height: size.height * 0.035),
                              //input text field section
                              inputTextField(
                                size: size,
                                thisController: thisController,
                                hintText: 'Enter UserName',
                                onChanged: (String value) {},
                              ),
                              SizedBox(height: size.height * 0.015),
                              passwordTextField(
                                size: size,
                                onChanged: (value) {},
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              roundedButton(
                                text: "Login",
                                onPressed: () {},
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              registerLine(
                                  size: size,
                                  text1: "Don't Have an Account Yet?",
                                  text2: "Sign Up Here",
                                  onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            signUpPage(), //can customize directed page
                                      ))),
                            ],
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //social media signin widget
  Widget socialMediaSignIn(
      BuildContext context, String picURL1, String picURL2, String picURL3) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.15,
      decoration: BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logoButton(
            size: size,
            logoURL: 'assets/images/googleLogo.png',
          ),
          logoButton(
            size: size,
            logoURL: 'assets/images/facebookLogo.jpeg',
          ),
          logoButton(
            size: size,
            logoURL: 'assets/images/twitterLogo.png',
          ),
        ],
      ),
    );
  }
}

class registerLine extends StatelessWidget {
  final String text1;
  final String text2;
  final Function() onPressed;
  const registerLine(
      {Key? key,
      required this.size,
      required this.text1,
      required this.text2,
      required this.onPressed})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          text1,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        FlatButton(
            onPressed: onPressed,
            child: Text(
              text2,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: size.height * 0.02,
                  fontWeight: FontWeight.bold),
            ))
      ],
    ));
  }
}
