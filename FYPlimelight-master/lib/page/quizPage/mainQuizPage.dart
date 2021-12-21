import 'package:flutter/material.dart';
import 'package:practice/page/components/components.dart';

import '../pages.dart';

class mainQuizPage extends StatefulWidget {
  const mainQuizPage({Key? key}) : super(key: key);

  @override
  _mainQuizPageState createState() => _mainQuizPageState();
}

//enum QuizAnswer { Answer1, Answer2,Answer3, Answer4, }
class _mainQuizPageState extends State<mainQuizPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFE9F8ED),
        drawer: SideDrawer(),
        appBar: AppBar(
          //opacity of the appbar
          bottomOpacity: 0.0,
          title: Text(
            "Profile".toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 20.0,
                  //color: Color(0xFF222AC9),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => firstmenupage()),
                );
              },
              icon: const Icon(Icons.backspace),
            ),
          ],
          backgroundColor:
              Colors.white54, //appbar background color (color+opacity code)
          elevation: 0,
        ),
        body: Align(
          alignment: FractionalOffset(0.5, 0.8),
          child: Container(
              alignment: Alignment.center,
              height: size.height * 0.87,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Align(
                  alignment: AlignmentDirectional(0.2, 0.6),
                  child: Column(
                    children: [
                      FittedBox(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Intro to computing   basics of software"
                                .toUpperCase(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xFFFEFEFE),
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * 0.015,
                            ),
                          )
                        ],
                      )),
                      Container(
                          height: size.height * 0.8,
                          width: size.width * 0.87,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: EdgeInsets.all(size.height * 0.05),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [createQuestion(context)],
                                    ),
                                  )),
                              VerticalDivider(
                                thickness: 2,
                              ),
                              Expanded(flex: 2, child: Column()),
                            ],
                          )),
                    ],
                  ))),
        ));
  }
}

//Widget for creating question
Widget createQuestion(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
      height: size.height * 0.5,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            createText(context, "Question 1", 0xFF002E00, 0.03),
            SizedBox(
              height: size.height * 0.03,
            ),
            createText(context, "Choose an Answer", 0xFF002E00, 0.03),
          ],
        ),
      ));
}

//widget for text
Widget createText(
    BuildContext context, String text, int colorCode, num textSize) {
  Size size = MediaQuery.of(context).size;
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size.height * textSize,
        color: Color(colorCode)),
  );
}

//Widget for creating multiple choice
/*Widget mcqSelection() {
  return Radio(value: 0, groupValue: _answerValue1, onChanged: onChanged)
  }
  
  class SingingCharacter {
    
}*/
//widget for creating flatbutton
Widget createButton(String text, bool focus) {
  return FlatButton(
    autofocus: focus,
    child: FittedBox(
      fit: BoxFit.fill,
      child: Text(text.toUpperCase(),
          style: const TextStyle(
            //fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color(0xFF222AC9),
          )),
    ),
    onPressed: () {}, //=> changeText,
    color: Color(0xFF93FFBA),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}
