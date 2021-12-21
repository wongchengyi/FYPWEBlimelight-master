import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practice/page/components/logoButton.dart';
import 'package:practice/page/components/roundedButton.dart';
import 'package:practice/page/registrationPage/signUpPage/emailSignUpPage.dart';

import '../../../constant.dart';
import 'emailSignUpInfoPage.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
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
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  textBuilder(
                                    size: size,
                                    text: "SIGN UP",
                                    textSize: 0.03,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.025,
                                  ),
                                  textBuilder(
                                      size: size,
                                      text: "with a social account",
                                      color: Colors.blue,
                                      textSize: 0.025),
                                  Container(
                                    height: size.height * 0.4,
                                    width: size.width * 0.2,
                                    decoration: BoxDecoration(
                                        //color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: GridView.count(
                                      physics: NeverScrollableScrollPhysics(),
                                      crossAxisCount: 2,
                                      children: <Widget>[
                                        //1st button
                                        logoButton(
                                          size: size,
                                          logoURL:
                                              'assets/images/googleLogo.png',
                                        ),
                                        //2nd button
                                        logoButton(
                                          size: size,
                                          logoURL:
                                              'assets/images/facebookLogo.jpeg',
                                        ),
                                        //3rd button
                                        logoButton(
                                          size: size,
                                          logoURL:
                                              'assets/images/twitterLogo.png',
                                        ),
                                        //4th button
                                        logoButton(
                                          size: size,
                                          logoURL:
                                              'assets/images/linkedinLogo.png',
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.025,
                                  ),
                                  roundedButton(
                                      text: "USE EMAIL",
                                      onPressed: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                emailSignUpPage(), //can customize directed page
                                          )))
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              )),
        ));
  }
}

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
