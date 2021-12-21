import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:practice/page/pages.dart';

//can use stack for the welcomepage
class firstmenupage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //getting the size of the browser the device is running
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: new FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => dashBoardPage()),
              );
            },
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: [
                          FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                              "welcome to".toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                              "limelight".toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 50,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class Navbaritems extends StatelessWidget {
  final String title;
  final Function press;
  const Navbaritems({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
