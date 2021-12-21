import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:practice/constant.dart';
import 'package:practice/page/firstmenupage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:
            kPrimaryColor, //setting up those constant values(colors, text and etc)
      ),
      home: firstmenupage(), //the class name
      //callling the homepage.dart to load the initial page
    );
  }
}
