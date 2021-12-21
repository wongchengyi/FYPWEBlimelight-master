import 'package:flutter/material.dart';
import 'package:practice/page/profilePage/tabBarPages/exportTabPage.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class viewReminder extends StatefulWidget {
  const viewReminder({Key? key}) : super(key: key);

  @override
  _viewReminderState createState() => _viewReminderState();
}

class _viewReminderState extends State<viewReminder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height * 0.45;
    double w = size.width * 0.6;
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
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                //Container A for the title header and two buttons
                Container(
                  width: this_width,
                  height: this_height * 0.2,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 7,
                          child: createText(
                              context, "ADD NEW REMINDER", 0xFF000000, 0.03),
                        ),
                        //save button
                        createButton(context, "save", 0xFFE9F8ED, 0.03, false),

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
                            child: Text("Cancel".toUpperCase(),
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
                //Container B
                Container(
                  height: this_height * 0.7,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 6,
                          child: Container(
                            child: ListView(
                              children: [
                                addSections(
                                    context, "headingText", "normalText"),
                                addSections(
                                    context, "headingText", "normalText"),
                                addSections(
                                    context, "headingText", "normalText")
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: SfCalendar(
                              view: CalendarView.month,
                              todayHighlightColor: Colors.red,
                              backgroundColor: Color(0xFFE9F8ED),
                              selectionDecoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.red, width: 2),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4)),
                                shape: BoxShape.rectangle,
                              ),
                              showNavigationArrow: true,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );

//widget for creating text
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

//Widget for create button
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
  Widget addSections(
    BuildContext context,
    String headingText,
    String text,
  ) {
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
            height: size.height * 0.015,
          ),
          Column(
            children: [
              Align(
                alignment: FractionalOffset(0.025, 0),
                child: RichText(
                    text: TextSpan(
                        //to reterieve data fromt he firestore ?
                        // List<News> newsList = FireStoreServiceApi().getNews();
                        children: <TextSpan>[
                      TextSpan(
                        text: text + "   ",
                        style: TextStyle(
                            color: Colors.black, fontSize: size.height * 0.02),
                      ),
                    ])),
              ),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
