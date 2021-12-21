import 'package:flutter/material.dart';
import 'package:practice/page/components/components.dart';
import 'package:practice/page/profilePage/tabBar.dart';

import '../pages.dart';

class testProfilePage extends StatefulWidget {
  const testProfilePage({Key? key}) : super(key: key);

  @override
  _testProfilePageState createState() => _testProfilePageState();
}

class _testProfilePageState extends State<testProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
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
        body: Container(
            child: CustomScrollView(
          slivers: <Widget>[
            //sliverToBoxAdapter is a placeholder for it to catch and contain 1 individual widget
            SliverToBoxAdapter(
              child: topContent(context),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                      alignment: Alignment.bottomCenter,
                      height: size.height * 2,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          //color: Color(0xFFBABFC2),
                          borderRadius: BorderRadius.circular(20)),
                      child: bottomContent(context));
                },
                //determine how long can the page be
                childCount: 1,
              ),
            ),
          ],
        )));
  }
}

//container of the top contentbar of the page
Widget topContent(context) {
  Size size = MediaQuery.of(context).size;
  return Container(
      height: size.height * 0.5,
      //color: Colors.white,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/profilebackground.jpg'),
            fit: BoxFit.cover),
      ),
      child: Padding(
        //padding to determine the spacing of the children with its parents
        padding: EdgeInsets.fromLTRB(size.width * 0.025, size.height * 0.08,
            size.width * 0.005, size.height * 0.01),
        /*padding: EdgeInsets.symmetric(
            vertical: size.height * 0.08, horizontal: size.width * 0.005),*/
        child: Column(
          children: [
            //for the top two right button
            Container(
              alignment: Alignment.topRight,
              height: size.height * 0.05,
              width: size.width,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  createButton("1", false),
                  SizedBox(
                    width: size.width * 0.005,
                  ),
                  createButton("2", true)
                ],
              ),
            ),
            //container for profile pic and basic profile description
            Expanded(
                child: Container(
              alignment: Alignment.topLeft,
              height: double.maxFinite,
              width: double.maxFinite,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //profilepicmg
                  profileImg(context, 'assets/images/profile.png'),
                  //userID+showbadges
                  userNameandBadges(context, "Johnlee", "zhongli"),
                  //profile desc and followers count
                  descText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan ipsum nisi, quis posuere quam tempus sit amet. Nam in leo quis dui pharetra maximus.",
                      "3")
                ],
              ),
            )),
          ],
        ),
      ));
}

//profileimage widget/method
Widget profileImg(BuildContext context, String picURL) {
  Size size = MediaQuery.of(context).size;
  return Container(
    alignment: Alignment.centerLeft,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image(
            height: size.height * 0.2,
            width: size.height * 0.15,
            image: AssetImage(picURL))),
  );
}

//widget for limebutton
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

//widget for username and badges
Widget userNameandBadges(BuildContext context, String userName, String userID) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
      child: Row(
    children: [
      Text(
        userName.toUpperCase(),
        style: TextStyle(
            //size.width * 0.025
            //size.width * 0.015
            fontWeight: FontWeight.bold,
            fontSize: 30),
      ),
      SizedBox(width: size.width * 0.01),
      Text(
        "@" + userID,
        style: TextStyle(fontSize: 15),
      ),
      SizedBox(width: size.width * 0.02),
      Container(
          height: size.height * 0.05,
          width: size.width * 0.15,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: ListView(
            scrollDirection: Axis.horizontal,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              badgeButton('assets/images/badges.png', "1"),
              badgeButton('assets/images/badges.png', "2"),
              badgeButton('assets/images/badges.png', "3"),
              badgeButton('assets/images/badges.png', "4"),
            ],
          ))
    ],
  ));
}

//widget for badge button
Widget badgeButton(String buttonPicURL, String amount) {
  return FlatButton(
    minWidth: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    onPressed: () {},
    child: Row(
      children: [
        ImageIcon(AssetImage(buttonPicURL)),
        Text(
          amount,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

//widget for profiledesc+followers count
Widget descText(String desc, String followerCount) {
  return Container(
    alignment: Alignment.topLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          desc,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          followerCount + " Follower",
          style: TextStyle(fontSize: 15),
        ),
      ],
    ),
  );
}

//container for the bottom content scrollable area of the page
Widget bottomContent(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
      child: Padding(
    padding: EdgeInsets.all(size.width * 0.01),
    child: Container(
      color: Color(0xFFE9F8ED),
      child: Expanded(
        child: tabBarMenu(),
      ),
    ),
  ));
}
