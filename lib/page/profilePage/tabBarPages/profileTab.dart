import 'package:flutter/material.dart';

class profilePageTab extends StatefulWidget {
  const profilePageTab({Key? key}) : super(key: key);

  @override
  _profilePageTabState createState() => _profilePageTabState();
}

class _profilePageTabState extends State<profilePageTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [profile(context)],
      ),
    );
  }
}

//widget for individual container (posts, profile and etc)
Widget profile(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width,
    decoration: BoxDecoration(
      color: Colors.transparent,
    ),
    child: Column(
      children: [
        //badges container
        whiteContainer(context), //badges
        SizedBox(height: size.height * 0.015),
        educationContainer(context), //education
        SizedBox(height: size.height * 0.015),
        experienceContainer(context), //exp
      ],
    ),
  );
}

//widget for individual white container
Widget whiteContainer(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
      height: size.height * 0.25,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadiusDirectional.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "LIMELIGHT BADGES",
                  style: TextStyle(
                      color: Color(0xFF93FFBA),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                  textAlign: TextAlign.start,
                ),
                Spacer(
                  flex: 8,
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      "EDIT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF222AC9),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Row(
              children: [
                badgesButton(
                    context, 'assets/images/badges.png', "placeholder"),
                badgesButton(
                    context, 'assets/images/badges.png', "placeholder"),
                badgesButton(
                    context, 'assets/images/badges.png', "placeholder"),
                badgesButton(
                    context, 'assets/images/badges.png', "placeholder"),
              ],
            )
          ],
        ),
      ));
}

//widget for flatbutton of diff badge
Widget badgesButton(BuildContext context, String picURL, String badgeName) {
  Size size = MediaQuery.of(context).size;
  return FlatButton(
    onPressed: () {},
    child: Image.asset(
      'assets/images/badges.png',
      height: size.height * 0.1,
      width: size.width * 0.1,
    ),
  );
}

//education container
Widget educationContainer(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
      height: size.height * 0.40,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadiusDirectional.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(children: [
              Text(
                "EDUCATION",
                style: TextStyle(
                    color: Color(0xFF93FFBA),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
                textAlign: TextAlign.start,
              ),
              Spacer(
                flex: 8,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    "EDIT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF222AC9),
                    ),
                  ))
            ]),
            SizedBox(
              height: size.height * 0.025,
            ),
            Row(
              children: [],
            )
          ],
        ),
      ));
}

//experience container
Widget experienceContainer(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
      height: size.height * 0.45,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadiusDirectional.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          //to align text at the start or end
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "WORK EXPERIENCE",
                  style: TextStyle(
                      color: Color(0xFF93FFBA),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                  textAlign: TextAlign.start,
                ),
                Spacer(
                  flex: 8,
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      "EDIT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF222AC9),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Column(
              children: [
                addSections(
                    context, "Taylor's University", "2000~2003", "normal")
              ],
            )
          ],
        ),
      ));
}

//widget for entire titleheading and normal text
Widget addSections(
    BuildContext context, String headingText, String year, String normalText) {
  Size size = MediaQuery.of(context).size;
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingText + " " + year,
          style: TextStyle(
              color: Color(0xFF22C1BA),
              fontWeight: FontWeight.bold,
              fontSize: size.height * 0.025),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: size.height * 0.0030,
        ),
        Text(
          "  " + normalText,
          style: TextStyle(color: Colors.black, fontSize: size.height * 0.02),
          textAlign: TextAlign.start,
        ),
        Divider()
      ],
    ),
  );
}
/*
VerticalDivider(
          color: Colors.black.withOpacity(0.5),
          thickness: 2,
        )*/
