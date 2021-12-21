import 'package:flutter/material.dart';

class chatContainer extends StatefulWidget {
  const chatContainer({Key? key}) : super(key: key);

  @override
  _chatContainerState createState() => _chatContainerState();
}

class _chatContainerState extends State<chatContainer> {
  //crucial component in retrieving user's text in the search bar
  final thisController = TextEditingController();

  @override
  void dispose() {
    thisController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
                color: Colors.black,
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(
                          controller: thisController,
                          //the controller for what action should be taken

                          decoration: InputDecoration(
                              prefixIcon:
                                  prefixIconCreate(Icons.image_outlined),
                              suffixIcon: suffixIconCreate(Icons.send),
                              hintText: "Enter Text...",
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none),
                        )),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget prefixIconCreate(IconData iconName) {
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

  Widget suffixIconCreate(IconData iconName) {
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
