import 'package:flutter/material.dart';

class otherUserPost extends StatefulWidget {
  const otherUserPost({Key? key}) : super(key: key);

  @override
  _otherUserPostState createState() => _otherUserPostState();
}

class _otherUserPostState extends State<otherUserPost> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          userPostsContainer(context),
        ],
      ),
    );
  }
}

// widget container for containing the post
Widget userPostsContainer(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width,
    child: Column(
      children: [usersContainer(context)],
    ),
  );
}

//white container for post section
Widget usersContainer(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.height * 0.20,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3))
        ]),
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: userProfilePic(context, 'assets/images/profile.png')),
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //username bold
                  userName(context, "john lee"),
                  //content
                  Expanded(
                    flex: 9,
                    child: contentBox(context,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget rhoncus lacus. In arcu neque, finibus sed ex consectetur, sagittis molestie velit. Donec dictum vel lacus in placerat. Ut commodo aliquam felis eget sagittis. Mauris vestibulum placerat felis, sed sagittis justo iaculis at. Suspendisse convallis tellus ut nibh scelerisque scelerisque. "),
                  ),
                  //date time and icons button
                  settingsBox(context)
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

//Widget for profile picture of the user
Widget userProfilePic(BuildContext context, String picURL) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image(image: AssetImage(picURL)),
  );
}

//widget for username bold
Widget userName(BuildContext context, String userName) {
  Size size = MediaQuery.of(context).size;
  return Text(
    userName.toUpperCase() + "(@" + userName.toLowerCase() + ")",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  );
}

//widget for text in the content
Widget contentBox(BuildContext context, String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 15),
  );
}

//widget for datetime and interaction
Widget settingsBox(BuildContext context) {
  DateTime now = new DateTime.now();
  return Row(
    children: <Widget>[
      Expanded(
          flex: 8,
          child: SizedBox(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${now.day}/${now.month}/${now.year}-' +
                    '${now.hour}:${now.minute}',
                style: TextStyle(fontSize: 13),
              )
            ],
          ))),
      Expanded(
          flex: 2,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                interactionButton("assets/images/heartblank.png", "1"),
                interactionButton("assets/images/heartblank.png", "1"),
                interactionButton("assets/images/heartblank.png", "1"),
              ],
            ),
          ))
    ],
  );
}

//widget for building interaction buttons
Widget interactionButton(String buttonPicURL, String count) {
  return FlatButton(
      minWidth: 5,
      onPressed: () {},
      child: Row(
        children: [
          Text(
            count,
            style: TextStyle(fontSize: 10),
          ),
          ImageIcon(AssetImage(buttonPicURL))
        ],
      ));
}
