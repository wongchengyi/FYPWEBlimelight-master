import 'package:flutter/material.dart';
import 'package:practice/page/dialog/dialog_Helper_viewReminder.dart';

class reminderDialog extends StatelessWidget {
  const reminderDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height * 0.9;
    double w = size.width * 0.9;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context, h, w),
    );
  }

  _buildChild(BuildContext context, double this_height, double this_width) =>
      Container(
        height: this_height,
        width: this_width,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(children: <Widget>[
                //Container A for the title header and two buttons
                Container(
                  width: this_width,
                  height: this_height * 0.12,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 7,
                          child: createText(
                              context, "Title holder 2", 0xFF000000, 0.03),
                        ),
                        //save button
                        createButton(context, "Add New Reminder", 0xFFE9F8ED,
                            0.03, false),
                        SizedBox(
                          width: this_width * 0.015,
                        ),
                        //cancel button
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text("Close".toUpperCase(),
                                style: const TextStyle(
                                  //fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                          ),
                          color: Color(0xFFE487B8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  ),
                ),
                //Container B for containing all of the reminders in a list view method scrolling vertically
                Container(
                    width: this_width,
                    height: this_height * 0.79,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Container(
                        height: this_height * 0.78,
                        child: ListView(
                          children: [
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                            addReminders(context, "Date", "Reminder Type",
                                "topic title", "time"),
                          ],
                        ),
                      ),
                    ))
              ])),
        ),
      );
  //widget for creating non bold text
  Widget createText(
      BuildContext context, String text, int colorCode, num textSize) {
    Size size = MediaQuery.of(context).size;
    return Text(
      text,
      textAlign: TextAlign.start,
      style:
          TextStyle(fontSize: size.height * textSize, color: Color(colorCode)),
    );
  }

//Widget for button on userinformation widget
  Widget createButton(BuildContext context, String text, int colorCode,
      num textSize, bool focus) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      autofocus: focus,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(text.toUpperCase(),
            style: const TextStyle(
              //fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      onPressed: () {}, //=> changeText,
      color: Color(colorCode),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }

  //widget for the children inside listview
  Widget addReminders(BuildContext context, String headingText, String type,
      String topic, String time) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headingText,
            style: TextStyle(
                color: Color(0xFF22C1BA),
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.025),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Align(
                  alignment: FractionalOffset(0.025, 0),
                  child: RichText(
                      text: TextSpan(
                          //to reterieve data fromt he firestore ?
                          // List<News> newsList = FireStoreServiceApi().getNews();
                          children: <TextSpan>[
                        TextSpan(
                          text: type + " : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: size.height * 0.02),
                        ),
                        TextSpan(
                          text: topic + "   ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height * 0.02),
                        ),
                        TextSpan(
                          text: time,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: size.height * 0.02),
                        ),
                      ])),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: FlatButton(
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text("view".toUpperCase(),
                          style: const TextStyle(
                            //fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                    onPressed: () {
                      dialog_Helper_viewReminder.exit(context);
                    },
                    color: Color(0xFFFEFEFE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ))
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
