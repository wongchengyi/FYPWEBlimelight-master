import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/page/components/SideDrawer.dart';
import 'package:practice/page/components/components.dart';
import 'package:practice/page/dialog/dialog_Helper_Reminder.dart';
import 'package:practice/page/dialog/dialog_helper.dart';

import 'firstmenupage.dart';

class dashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    //stored string for listview
    final List<String> entries = <String>[
      'Reminders 1',
      'Reminders 2',
      'Reminders 3'
    ];
    //color code for each listview
    final List<int> colorCodes = <int>[600, 500, 100];

    //var items; //might need to build a getter for var items
    //DIRECTLY READ LIST OF reminders from the reminder lists
    final items = List<String>.generate(
        5, (i) => "Reminder $i"); // generate 5 list of string
    var fontThemeTitle = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 20.0,
          color: Color(0xFF222AC9),
          fontWeight: FontWeight.bold,
        );
    var fontTheme = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        );
    var GreenfontTheme = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 15.0,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        );
    Size size = MediaQuery.of(context).size;
    //var dividerHeight = size.height * 0.8;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(
          "Dashboard".toUpperCase(),
          style: fontThemeTitle,
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
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      body: Container(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: kGradientColor,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                //left side of the screen
                Expanded(
                    flex: 8,
                    child: Container(
                        height: size.height * 0.8,
                        //alignment: Alignment(-1, 0.0),
                        decoration: BoxDecoration(
                            color: Color(0xFFE9F8ED),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.all(50),
                          child: ListView(
                            children: [
                              //wrapping 2 container in a padding to have spaces

                              //user posting section
                              usersPosts(),
                              //retrieve other user post section
                              SizedBox(height: size.height * 0.1 / 2),
                              otherUserPost(),
                            ],
                          ),
                        ))),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                //right side of the screen
                Expanded(
                    flex: 2,
                    child: Container(
                      //right side container
                      height: size.height * 0.8,
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Container(
                                //decoration: BoxDecoration(color: Colors.red),
                                width: 100,
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/profile.png'),
                                    ),
                                    buildText1(fontTheme, "USERNAME"),
                                    buildText1(fontTheme, "@USERNAME"),
                                  ],
                                )),
                          ),
                          Flexible(
                            flex: 3,
                            fit: FlexFit.loose,
                            child: Container(
                              width: 300,
                              //height: 150,
                              decoration: boxDecoration,
                              child: Column(
                                children: <Widget>[
                                  FlatButton(
                                    onPressed: () {
                                      dialogHelper.exit(context);
                                    },
                                    child: buildText2(
                                        GreenfontTheme, "Badge Wall"),
                                  ),
                                  GridView.count(
                                    shrinkWrap: true,
                                    primary: false,
                                    crossAxisCount: 3,
                                    /*physics:
                                        const NeverScrollableScrollPhysics(),*/
                                    children: <Widget>[
                                      displayBadges('assets/images/badges.png'),
                                      displayBadges('assets/images/badges.png'),
                                      displayBadges('assets/images/badges.png'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      20)), //was planning to use spacer but end up not having much flexibility on the spaced size
                          Flexible(
                            flex: 4,
                            fit: FlexFit.loose,
                            child: Container(
                              width: 300,
                              height: 350,
                              decoration: boxDecoration,
                              child: Column(
                                children: <Widget>[
                                  FlatButton(
                                    onPressed: () {
                                      dialog_Helper_Reminder.exit(context);
                                    },
                                    child:
                                        buildText2(GreenfontTheme, "Reminders"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

//HERE CONTAINS ALL OF THE CODE SNIPPET OF DIFFERENT WIDGET TO BE CALLED INTO ABOVE
  FlatButton buildTextFlatButton(TextStyle fontTheme, String text) {
    return FlatButton(
        onPressed: () {},
        child: Text(
          text,
          style: fontTheme,
        ));
  }

//style1 text
  Widget buildText1(TextStyle fontTheme, String textItem) {
    return Text(
      textItem,
      textAlign: TextAlign.left,
      style: fontTheme,
    );
  }

//style2 text
  Widget buildText2(TextStyle fontTheme, String textItem) {
    return Text(textItem, textAlign: TextAlign.left, style: fontTheme);
  }

  //getter for image
  Widget imageandProfile(String url) {
    return Image.network(url);
  }

  void badgeCounter(int i) {}
  //this is to create entire button with images and text alongside will soon add the heighsize as well

  //display badges by button style
  displayBadges(String picURL) {
    return ButtonTheme(
      minWidth: double.minPositive,
      height: double.infinity,
      child: FlatButton(
          onPressed: () {},
          child: Image(
            image: AssetImage(picURL),
          )),
    );
  }

  Widget smallButtonCreate(IconData iconName) {
    return ButtonTheme(
      minWidth: double.minPositive,
      height: double.minPositive,
      child: FlatButton(
        onPressed: () {},
        child: Icon(iconName),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

//User name=account name
//user = unique user id/name
//context=context/info that is posted
//time = date and time of the original post
  Widget userInteraction(
      String userName, String user, String context, String time) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            )
          ],
        ),
      ),
    );
  }

//popup upon clicking badge

}
