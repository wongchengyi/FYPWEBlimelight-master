import 'package:flutter/material.dart';
import 'package:practice/page/chatPage/chatContainer.dart';
import 'package:practice/page/chatPage/searchBar_User.dart';
import 'package:practice/page/components/components.dart';

import '../pages.dart';

class mainChatPage extends StatefulWidget {
  const mainChatPage({Key? key}) : super(key: key);

  @override
  _mainChatPageState createState() => _mainChatPageState();
}

class _mainChatPageState extends State<mainChatPage> {
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
            "chat".toUpperCase(),
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
          alignment: FractionalOffset(0.25, 0.8),
          child: Container(
              height: size.height * 0.87,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.1,
                    //width: size.width * 0.5,

                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        searchBar_User(),
                        createText(context, "username", 0xFF000000, 0.03),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        createNonBoldText(
                            context, "@username", 0xFF000000, 0.025)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        //listview container to show active user
                        Expanded(
                          flex: 2,
                          child: Container(
                              height: size.height * 0.77,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: ListView(
                                padding: const EdgeInsets.all(15),
                                children: <Widget>[
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                  userBuilder(context, "user1",
                                      'assets/images/profile.png'),
                                ],
                              )),
                        ),
                        //chat container to show the chat content
                        Expanded(
                          flex: 6,
                          child: Container(
                              height: size.height * 0.77,
                              color: Colors.black,
                              child: chatContainer()),
                        ),
                        //side display container to show the details of user
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: size.height * 0.77,
                                color: Colors.transparent,
                                child: Padding(
                                    padding: EdgeInsets.all(25),
                                    child: userInfo(context, "user name",
                                        'assets/images/profile.png')))),
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
// sections for all button and text creation

//widget for creating bold text
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

//widget for creating non bold text
Widget createNonBoldText(
    BuildContext context, String text, int colorCode, num textSize) {
  Size size = MediaQuery.of(context).size;
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(fontSize: size.height * textSize, color: Color(colorCode)),
  );
}

//Widget for button on userinformation widget
Widget createUserInfoActionButton(
    BuildContext context, String text, int colorCode, num textSize) {
  Size size = MediaQuery.of(context).size;
  return FlatButton(
    onPressed: () {},
    child: createNonBoldText(context, text, colorCode, textSize),
  );
}

//widget for all of the main functions

//widget for showing profile pic and name of the user
Widget userBuilder(BuildContext context, String name, String picURL) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.all(size.width * 0.01),
    child: Row(
      children: [
        ClipRRect(
          child: Image(
            height: size.height * 0.075,
            image: AssetImage(picURL),
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: size.height * 0.02),
        )
      ],
    ),
  );
}

//widget to display the user profile pic+name and doable actions such as block, report and add
Widget userInfo(BuildContext context, String userName, String picURL) {
  Size size = MediaQuery.of(context).size;
  return Container(
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          child: Image(
            height: size.height * 0.095,
            image: AssetImage(picURL),
            fit: BoxFit.contain,
          ),
        ),
        createText(context, "username", 0xFF000000, 0.03),
        Text(
          "@" + userName,
          style: TextStyle(color: Colors.grey, fontSize: size.height * 0.03),
        ),
        Divider(
          height: size.height * 0.1,
          thickness: 3,
        ),
        createUserInfoActionButton(context, "Block", 0xFF000000, 0.03),
        createUserInfoActionButton(context, "Report", 0xFF000000, 0.03),
        createUserInfoActionButton(context, "Add As Friend", 0xFF000000, 0.03),
      ],
    ),
  );
}
