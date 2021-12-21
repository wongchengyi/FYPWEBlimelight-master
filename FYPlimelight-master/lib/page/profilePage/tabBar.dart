import 'package:flutter/material.dart';
import 'package:practice/page/profilePage/tabBarPages/exportTabPage.dart';
import 'package:practice/page/profilePage/tabBarPages/imagesTab.dart';
import 'package:practice/page/profilePage/tabBarPages/postsTab.dart';

class tabBarMenu extends StatefulWidget {
  const tabBarMenu({Key? key}) : super(key: key);

  @override
  _tabBarMenuState createState() => _tabBarMenuState();
}

class _tabBarMenuState extends State<tabBarMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.transparent,
      height: size.height * 2,
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(tabs: <Widget>[
              tabMenuBarText(context, "profile"),
              tabMenuBarText(context, "posts"),
              tabMenuBarText(context, "images"),
              tabMenuBarText(context, "liked messages"),
            ]),
            SizedBox(
              height: size.height * 0.015,
            ),
            Expanded(
                child: TabBarView(
              children: <Widget>[
                profilePageTab(),
                postsTabPage(),
                imagesTab(),
                profilePageTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

//widget for diff tab
Widget tabMenuBarText(BuildContext context, String text) {
  Size size = MediaQuery.of(context).size;
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(color: Colors.transparent),
    width: double.maxFinite,
    height: size.height * 0.05,
    child: Text(
      text.toUpperCase(),
      style:
          TextStyle(fontWeight: FontWeight.bold, fontSize: size.height * 0.02),
    ),
  );
}
