import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/page/components/SideDrawer.dart';
import 'package:practice/page/pages.dart';
import 'exportbadge.dart';

class badgesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var sections
    final children = <Widget>[];
    var boxShadow = BoxShadow(
      color: Colors.grey,
      blurRadius: 2.0,
      spreadRadius: 2.0,
    );
    var fontThemeTitle = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        );
    var fontTheme = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 15.0,
          color: Colors.black,
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
          "Badges".toUpperCase(),
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
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              height: size.height * 0.8,
              width: size.width * 0.9,
              child: Row(
                children: [
                  Expanded(
                      flex: 7,
                      child: Container(
                        padding: EdgeInsets.all(50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 75,
                                  image: AssetImage('assets/images/badges.png'),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    buildText1(fontTheme, "Master Badges"),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 25)),
                                    Text("Master Badges show..."),
                                    Padding(padding: EdgeInsets.all(25)),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              color: Colors.transparent,
                              height: size.height * 0.53,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  //for collected badges
                                  Text(
                                    "Collected Badges",
                                    style: fontTheme,
                                    textAlign: TextAlign.start,
                                  ),
                                  Padding(padding: EdgeInsets.only(bottom: 20)),
                                  Container(
                                    height: size.height * 0.15,
                                    child: GridView.count(
                                      //mainAxisSpacing: 5,
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: <Widget>[
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  //for uncollected Badges
                                  Text(
                                    "Unollected Badges",
                                    style: fontTheme,
                                    textAlign: TextAlign.start,
                                  ),
                                  Padding(padding: EdgeInsets.only(bottom: 20)),
                                  Container(
                                    height: size.height * 0.15,
                                    child: GridView.count(
                                      //mainAxisSpacing: 5,
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: <Widget>[
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                        badgeContainer(160, fontTheme, "Badge1",
                                            'assets/images/badges.png'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: VerticalDivider(
                        color: Colors.black.withOpacity(0.5),
                        thickness: 1,
                      )),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(50),
                      //color: Colors.green, //to show the size of container
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //can add display those numbers of collected badges here
                          buildMenuItem(
                            text: "Master Badges",
                            fontTheme: fontTheme,
                            onClicked: () => SelectedItem(context, 0),
                          ),
                          buildMenuItem(
                            text: "Midway Badges",
                            fontTheme: fontTheme,
                            onClicked: () => SelectedItem(context, 1),
                          ),
                          buildMenuItem(
                            text: "Mini Badges",
                            fontTheme: fontTheme,
                            onClicked: () => SelectedItem(context, 2),
                          ),
                          Divider(
                            color: Colors.black.withOpacity(0.5),
                            thickness: 1,
                          ),
                          buildMenuItem(
                            text: "My Progress",
                            fontTheme: fontTheme,
                            onClicked: () => SelectedItem(context, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    ImageIcon,
    required TextStyle fontTheme,
    required onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.lime;
    return ListTile(
      title: Text(
        text,
        style: fontTheme,
        textAlign: TextAlign.right,
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  Widget buildText1(TextStyle fontTheme, String textItem) {
    return Text(
      textItem,
      textAlign: TextAlign.left,
      style: fontTheme,
    );
  }

  void badgeCounter(int i) {}
  //this is to create entire button with images and text alongside will soon add the heighsize as well
  Widget badgeContainer(
      double widthSize, TextStyle fontTheme, String textItems, String picURL) {
    return Container(
        height: widthSize,
        width: widthSize,
        color: Colors.transparent,
        child: FlatButton(
          height: double.infinity,
          minWidth: double.infinity,
          //in futre to assign action to the button under this onPressed feature
          //might need to use switch case to assign to each individual action since this is a publicly avalible object to be
          onPressed: () {},
          child: Container(
            child: Column(
              children: [
                Image(
                  width: widthSize,
                  height: 75,
                  alignment: Alignment.center,
                  image: AssetImage(picURL),
                ),
                Text(
                  textItems,
                  textAlign: TextAlign.center,
                  style: fontTheme,
                ),
              ],
            ),
          ),
        ));
  }

  SelectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => badgesPage(), //can customize directed page
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              midwayBadgesPage(), //can customize directed page
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => miniBadgesPage(), //can customize directed page
        ));
        break;
    }
  }
}
