import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class usersPosts extends StatefulWidget {
  const usersPosts({Key? key}) : super(key: key);

  @override
  _usersPostsState createState() => _usersPostsState();
}

class _usersPostsState extends State<usersPosts> {
  //crucial component in retrieving user's text in the search bar
  final thisController = TextEditingController();

  @override
  void dispose() {
    thisController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String userPost;
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3))
          ]),
      child: Row(
        children: [
          //profile pic
          Expanded(
              flex: 2,
              child: Image(image: AssetImage('assets/images/profile.png'))),
          //textbox
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: thisController,
                decoration: InputDecoration(
                    hintText: "Ideas",
                    labelText: "A penny for your toughts...",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                            color: Colors.transparent)),
                    fillColor: Color(0xFFE9F8ED),
                    filled: true,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.post_add),
                    )),
                maxLength: 280,
                maxLines: 2,
                //get the constant changing value
                /*onChanged: (String text) {
                  print(text);
                },*/
                //get the submitted value
                onSubmitted: (String text) {
                  print(text);
                },
                //bool to autocorrect content
                autocorrect: true,
              ),
            ),
          ),
          //right side (buttons and etc)
          Expanded(
              flex: 1,
              child: Container(
                  //alignment: Alignment.topCenter,
                  //color: Colors.amber,
                  child: Column(
                children: [
                  SizedBox(height: 20),
                  FlatButton(
                      autofocus: true,
                      onPressed: () {},
                      color: Color(0xFF93FFBA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Post".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF222AC9),
                        ),
                      )),
                  SizedBox(height: size.height * 0.1 / 10),
                  Row(
                    children: [
                      smallButtonCreate(Icons.camera_alt_outlined),
                      smallButtonCreate(Icons.attach_file_outlined)
                    ],
                  ),
                ],
              )))
        ],
      ),
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

  submitpost(usersPosts) {}
}
