import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/page/components/SideDrawer.dart';
import 'package:practice/page/components/components.dart';
import 'package:practice/page/components/contentBuilder.dart';
import 'package:practice/page/pages.dart';

import '../constant.dart';

class coursePages extends StatefulWidget {
  const coursePages({Key? key}) : super(key: key);

  @override
  _coursePagesState createState() => _coursePagesState();
}

class _coursePagesState extends State<coursePages> {
  //String searchResults = searchBar.searchResults;
  get size {
    Size size = MediaQuery.of(context).size;
  }

  //crucial component in retrieving user's text in the search bar
  final thisController = TextEditingController();

  @override
  void dispose() {
    thisController.dispose();
    super.dispose();
  }

  String searchResult = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(
          "Courses".toUpperCase(),
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 20.0,
                color: Color(0xFF222AC9),
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
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: kGradientColor,
        child: Column(
          children: [
            //search bar
            GestureDetector(
              onTap: () => Focus.of(context).requestFocus(FocusNode()),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: FractionalOffset(0.9, 0.6),
                    child: Container(
                      height: size.height * 0.07,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          TextField(
                            controller: thisController,
                            decoration: InputDecoration(
                                counterText: '',
                                labelText: "Press Enter to Search",
                                labelStyle: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                suffixIcon: smallButtonCreate(Icons.search),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                            //this method could used to get users input into the search box
                            onSubmitted: (String search) {
                              setState(() {
                                searchResult = search;
                              });
                            },
                            maxLength: 20,
                            /*inputFormatters: [
                      WhitelistingTextInputFormatter(RegExp("[a-zA-Z]"))
                    ],*/
                            showCursor: true,
                            //bool to autocorrect content
                            autocorrect: true,
                          ),
                        ],
                      ),
                    ),
                  )),
            ),

            //body container for courses
            Container(
              height: size.height * 0.8,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Container(
                    height: size.height * 0.1,
                    child: Column(
                      children: [
                        //searched tag
                        Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Seached Tag: $searchResult".toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 20.0,
                                      color: Colors.green[600],
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            )),
                        Expanded(
                            flex: 8,
                            child: ListView(
                              children: [courseInfo()],
                            ))
                        //course content
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget smallButtonCreate(IconData iconName) {
    return ButtonTheme(
      minWidth: double.minPositive,
      height: double.minPositive,
      child: FlatButton(
        onPressed: () {
          //https://flutter.dev/docs/cookbook/forms/retrieve-input
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the user has entered by using the
                // TextEditingController.
                content: Text(thisController.text),
              );
            },
          );
        },
        child: Icon(iconName),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
