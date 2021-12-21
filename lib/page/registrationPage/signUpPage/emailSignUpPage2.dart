import 'package:flutter/material.dart';
import 'package:practice/page/components/logoButton.dart';
import 'package:practice/page/components/roundedButton.dart';
import 'package:practice/page/registrationPage/signUpPage/emailSignUpPage.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';

import 'emailSignUpInfoPage.dart';

class emailSignUpPage2 extends StatefulWidget {
  const emailSignUpPage2({Key? key}) : super(key: key);

  @override
  _emailSignUpPage2State createState() => _emailSignUpPage2State();
}

class _emailSignUpPage2State extends State<emailSignUpPage2> {
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
                                    borderRadius: BorderRadius.circular(30)),
                                child: GridView.count(
                                  physics: NeverScrollableScrollPhysics(),
                                  crossAxisCount: 2,
                                  children: <Widget>[
                                    //1st button
                                    logoButton(
                                      size: size,
                                      logoURL: 'assets/images/googleLogo.png',
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
                                      logoURL: 'assets/images/twitterLogo.png',
                                    ),
                                    //4th button
                                    logoButton(
                                      size: size,
                                      logoURL: 'assets/images/linkedinLogo.png',
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
                                            emailSignUpInfoPage(), //can customize directed page
                                      )))
                            ],
                          )
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
