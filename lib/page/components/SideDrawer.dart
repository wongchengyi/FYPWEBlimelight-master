import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/page/chatPage/mainChatPage.dart';
import 'package:practice/page/components/testingPage.dart';
import 'package:practice/page/coursecontent/exportCourseContent.dart';
import 'package:practice/page/pages.dart';
import 'package:practice/page/badge/exportbadge.dart';
import 'package:practice/page/profilePage/testProfilePage.dart';
import '../CalendarPage2.dart';
import '../dashBoardPage.dart';

class SideDrawer extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        //color of drawer?
        //color: Color(0xBFFF00),
        child: ListView(
          //1st property in the side drawer
          children: <Widget>[
            DrawerHeader(
                decoration: kGradientColor,
                child: Image(
                    image: AssetImage('assets/images/limelightlogo.png'))),
            const SizedBox(height: 48),
            //method for listing out "properties in the sidedrawer"
            buildMenuItem(
              text: "Calendar", //change text
              icon: Icons.perm_contact_calendar_outlined, //change logo
              onClicked: () => SelectedItem(context, 0),
            ),
            //2nd property
            const SizedBox(height: 48),
            //method for listing out "properties in the sidedrawer"
            buildMenuItem(
              text: 'Badges', //change text
              icon: Icons.badge_outlined, //change logo
              //ImageIcon: AssetImage('practice/assets/images/badges.png'),
              onClicked: () => SelectedItem(context, 1),
            ),
            //3rd property
            const SizedBox(height: 48),
            //method for listing out "properties in the sidedrawer"
            buildMenuItem(
              text: 'Dash Board', //change text
              icon: Icons.supervised_user_circle, //change logo
              onClicked: () => SelectedItem(context, 2),
            ),
            //4th property
            const SizedBox(height: 48),
            //method for listing out "properties in the sidedrawer"
            buildMenuItem(
              text: 'Courses', //change text
              icon: Icons.people, //change logo
              onClicked: () => SelectedItem(context, 3),
            ),
            //5th property
            const SizedBox(height: 48),
            //method for listing out "properties in the sidedrawer"
            buildMenuItem(
              text: 'profile', //change text
              icon: Icons.supervised_user_circle_rounded, //change logo
              onClicked: () => SelectedItem(context, 4),
            ),
            //6th property
            const SizedBox(height: 48),
            //method for listing out "properties in the sidedrawer"
            buildMenuItem(
              text: 'Chat', //change text
              icon: Icons.supervised_user_circle_rounded, //change logo
              onClicked: () => SelectedItem(context, 5),
            ),
            //7th property
            const SizedBox(height: 48),
            //method for listing out "properties in the sidedrawer"
            buildMenuItem(
              text: 'Testing Page', //change text
              icon: Icons.supervised_user_circle_rounded, //change logo
              onClicked: () => SelectedItem(context, 6),
            ),
          ],
        ),
      ),
    );
  }

  //default flutter icon widget method
  Widget buildMenuItem({
    required String text,
    icon,
    ImageIcon,
    onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.lime;

    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  SelectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => calendarPages(), //can customize directed page
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => badgesPage(), //can customize directed page
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => dashBoardPage(), //can customize directed page
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              mainCourseContent(), //can customize directed page
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => testProfilePage(), //can customize directed page
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => mainChatPage(), //can customize directed page
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => testingPage(), //can customize directed page
        ));
        break;
    }
  }
}
