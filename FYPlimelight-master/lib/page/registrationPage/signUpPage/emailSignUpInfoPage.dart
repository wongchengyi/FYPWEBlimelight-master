import 'package:flutter/material.dart';
import 'package:practice/page/components/roundedButton.dart';
import 'package:practice/page/registrationPage/signUpPage/labelandTextField.dart';
import 'package:practice/page/registrationPage/signUpPage/passwordField.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';

import 'emailSignUpPage.dart';

class emailSignUpInfoPage extends StatefulWidget {
  const emailSignUpInfoPage({Key? key}) : super(key: key);

  @override
  _emailSignUpInfoPageState createState() => _emailSignUpInfoPageState();
}

class _emailSignUpInfoPageState extends State<emailSignUpInfoPage> {
  @override
  Widget build(BuildContext context) {
    final thisController = TextEditingController();
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
                    bottom: 75,
                    child: Container(
                      height: size.height * 0.8,
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
                              Container(
                                  height: size.height * 0.6,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      //color: Colors.red,
                                      borderRadius: BorderRadius.circular(30)),
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          labelandTextField(
                                            size: size,
                                            thisController: thisController,
                                            hintText: 'FIRSTNAME',
                                            labelText: 'FIRSTNAME',
                                            textFieldSize: size.width * 0.17,
                                          ),
                                          SizedBox(
                                            width: size.width * 0.01,
                                          ),
                                          labelandTextField(
                                            size: size,
                                            thisController: thisController,
                                            hintText: 'LASTNAME',
                                            labelText: 'LASTNAME',
                                            textFieldSize: size.width * 0.17,
                                          )
                                        ],
                                      ),
                                      labelandTextField(
                                        size: size,
                                        thisController: thisController,
                                        hintText: 'USERNAME',
                                        labelText: 'USERNAME',
                                        textFieldSize: size.width * 0.33,
                                      ),
                                      passwordField(
                                          size: size,
                                          thisController: thisController)
                                    ],
                                  )),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              roundedButton(
                                  text: "Next",
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
          ),
        ),
      ),
    );
  }
}
