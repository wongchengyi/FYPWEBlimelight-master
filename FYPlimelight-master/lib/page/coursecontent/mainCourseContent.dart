import 'package:flutter/material.dart';
import 'package:practice/page/components/components.dart';
import 'package:practice/page/dialog/dialog_Helper_Enroll.dart';
import 'package:practice/page/pages.dart';
import 'package:practice/page/quizPage/mainQuizPage.dart';
import 'exportCourseContent.dart';

import '../../constant.dart';

class mainCourseContent extends StatefulWidget {
  const mainCourseContent({Key? key}) : super(key: key);
  @override
  _mainCourseContentState createState() => _mainCourseContentState();
}

class _mainCourseContentState extends State<mainCourseContent> {
  @override
  Widget build(BuildContext context) {
    bool onClicked = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("Searched tag".toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 20.0,
                  color: Color(0xFF222AC9),
                  fontWeight: FontWeight.bold,
                )),
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
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      body: Container(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: kGradientColor,
          alignment: Alignment.center,
          child: Container(
            height: size.height * 0.85,
            width: size.width * 0.95,
            alignment: Alignment(-1, 0.0),
            decoration: BoxDecoration(
                color: Colors.white,
                //color: Color(0xFFE9F8ED),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                //left side of screen
                Expanded(
                    flex: 3,
                    child: Container(
                        alignment: Alignment.topLeft,
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 50),
                          child: Column(
                            children: <Widget>[
                              Flexible(
                                  flex: 4,
                                  child: Container(
                                      width: size.width * double.infinity,
                                      height: size.height * 0.35,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5))
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        child: FittedBox(
                                            child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image(
                                              image: AssetImage(
                                            'assets/images/testimage.png',
                                          )),
                                        )),
                                      ))),
                              Flexible(
                                  flex: 6,
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                        alignment: Alignment(1.0, 0.0),
                                        //color: Colors.orange,
                                        child: ListView(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          children: [
                                            courseSpecification(
                                                context,
                                                "Title 1",
                                                "content 1",
                                                "assets/images/certificate-2.png"),
                                            courseSpecification(
                                                context,
                                                "Title 2",
                                                "content 2",
                                                "assets/images/pc.png"),
                                            courseSpecification(
                                                context,
                                                "Title 3",
                                                "content 3",
                                                "assets/images/translation.png"),
                                            courseSpecification(
                                                context,
                                                "Title 4",
                                                "content 4",
                                                "assets/images/speedometer.png"),
                                          ],
                                        )),
                                  )),
                            ],
                          ),
                        ))),
                //right side of screen
                Expanded(
                  flex: 7,
                  child: Container(
                      alignment: Alignment(-1.0, 0.0),
                      //color: Colors.blue,
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              //course desc
                              courseDescription(
                                context,
                                "Intro to xxx",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam lorem dui, imperdiet sed nisi at, mollis ultrices tortor. Morbi malesuada interdum lacus, ac dignissim mi tristique a. Phasellus tincidunt sit amet eros et commodo. Quisque pellentesque tempus tincidunt. Duis ut enim vitae massa congue vestibulum consequat a erat.",
                              ),
                              //organization details
                              organizationDetails(
                                  context,
                                  'assets/images/testimage.png',
                                  'Company Name',
                                  'Company Desc',
                                  'enroll now'),

                              //can have multiple hashtag
                              hashTags('hashtag 1', 2),
                              Container(
                                color: Colors.transparent,
                                width: double.infinity,
                                height: size.height * 0.4,
                                child: ListView(
                                  children: [
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                    courseStructure(
                                        context, "lorem ipsum", "1"),
                                  ],
                                ),
                              ),
                              //expanded? course strucutre
                            ],
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//course specifications
  Widget courseSpecification(
      BuildContext context, String title1, String content, String picURL) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //alignment: Alignment.topLeft,
      //color: Colors.blueAccent,
      height: 75,
      child: Row(
        children: [
          //Icons
          Expanded(flex: 2, child: Image(image: AssetImage(picURL))),
          //Description
          Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.all(15),
                //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: RichText(
                  text: TextSpan(
                    //insert text style
                    text: title1 + "\n" + content,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

//for courseDescription
Widget courseDescription(BuildContext context, String title1, String content) {
  Size size = MediaQuery.of(context).size;
  return Container(
      //alignment: Alignment.topLeft,
      //color: Colors.blueAccent,
      height: size.height * 0.2,
      child: Column(
        children: [
          //Description
          Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title1.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 20.0,
                            color: Color(0xFF222AC9),
                            fontWeight: FontWeight.bold,
                          ),
                      maxLines: 1,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                    Text(
                      content,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 15.0,
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                          ),
                      maxLines: 3,
                    )
                  ],
                ),
              ))
        ],
      ));
}

//for Company/organization details
Widget organizationDetails(BuildContext context, String picURL, String title,
    String content, String enroll) {
  String status = "ENROLL NOW";
  return Container(
      //alignment: Alignment.topLeft,
      //color: Colors.blueAccent,
      height: 75,
      child: Row(
        children: [
          //Organization/company image
          Expanded(flex: 2, child: Image(image: AssetImage(picURL))),
          //Description
          Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 20.0,
                          color: Color(0xFF222AC9),
                          fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                  Text(content)
                ],
              )),
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {},
                  child: FlatButton(
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text("$enroll".toUpperCase(),
                          style: const TextStyle(
                            //fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF222AC9),
                          )),
                    ),
                    onPressed: () {
                      dialog_Helper_Enroll.exit(context);
                      enroll = "ENROLLED";

                      /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (content) =>
                                  dialog_Helper_Enroll.exit(context)));*/
                    }, //=> changeText,
                    color: Color(0xFF93FFBA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )))
        ],
      ));
}

Widget hashTags(String hashTagsText, int hashTagNum) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        Flexible(
            flex: 1,
            child: FlatButton(
              onPressed: () {},
              child: Text("#" + hashTagsText,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  )),
            )),
        Flexible(
            flex: 1,
            child: FlatButton(
              onPressed: () {},
              child: Text("#" + hashTagsText,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  )),
            )),
        Flexible(
            flex: 1,
            child: FlatButton(
              onPressed: () {},
              child: Text("#" + hashTagsText,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  )),
            )),
      ],
    ),
  );
}

//for update ENROLL NOW to ENROLLED
class UpdateText extends StatefulWidget {
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  String textHolder = "ENROLL NOW";
  changeText() {
    setState(() {
      textHolder = 'ENROLLED';
    });
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

//course structure
Widget courseStructure(BuildContext context, String desc, String count) {
  Size size = MediaQuery.of(context).size;

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 25),
    child: SizedBox(
      width: double.infinity,
      height: size.height * 0.1,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    count,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 20),
                  ),
                  Image(image: AssetImage('assets/images/hexagon.png')),
                ],
              )),
          Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      desc,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      desc,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              )),
        ],
      ),
    ),
  );
}
