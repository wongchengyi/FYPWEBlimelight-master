import 'package:flutter/material.dart';

class searchBar_User extends StatefulWidget {
  const searchBar_User({Key? key}) : super(key: key);

  @override
  _searchBar_UserState createState() => _searchBar_UserState();
}

class _searchBar_UserState extends State<searchBar_User> {
  //crucial component in retrieving user's text in the search bar
  final thisController = TextEditingController();

  @override
  void dispose() {
    thisController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Focus.of(context).requestFocus(FocusNode()),
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: FractionalOffset(0.9, 0.6),
            child: Container(
              height: size.height * 0.07,
              width: size.width * 0.18,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  TextField(
                    controller: thisController,
                    decoration: InputDecoration(
                        counterText: '',
                        labelText: "Press Enter to Search",
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.black),
                        prefixIcon: iconButton(context, Icons.search),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                    //this method could used to get users input into the search box
                    onSubmitted: (String search) {
                      print(search);
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
    );
  }

  Widget iconButton(BuildContext context, IconData iconName) {
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
