import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/page/components/SideDrawer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'firstmenupage.dart';

class calendarPages extends StatelessWidget {
  const calendarPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fontTheme = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        );
    var boxDecoration = BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(20),
    );

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(
          "Calendar".toUpperCase(),
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
        color: Colors.transparent,
        child: Container(
          height: size.height,
          width: size.width,
          decoration: kGradientColor,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                //left side calendar
                Expanded(
                    flex: 5,
                    child: Container(
                      height: size.height * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: SfCalendar(
                        view: CalendarView.month, //set view for calendar
                        firstDayOfWeek: 1,
                        monthViewSettings: MonthViewSettings(
                            //showAgenda: true, //to be discussed for implementation
                            appointmentDisplayMode: //feature to show appointment made on that day in a monthly view
                                MonthAppointmentDisplayMode.appointment),
                        //monthViewSettings: MonthViewSettings(showAgenda: true), //show agenda and date for that date
                        showDatePickerButton: true,
                        showNavigationArrow: true,
                        //for selection border
                        selectionDecoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.red, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                          shape: BoxShape.rectangle,
                        ),
                        //for future onTap usage what should be displayed when a date is pressed
                        //look for the method void calendartap as below for more references
                        //references link : https://www.syncfusion.com/kb/10999/how-to-get-appointment-details-from-the-ontap-event-of-the-flutter-calendar
                        onTap: calendartap,
                      ),
                    )),
                //center padding
                SizedBox(
                  width: size.width * 0.1,
                ),
                //right side 2 column
                Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        //color: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //Reminders
                          Expanded(
                              flex: 5,
                              child: Container(
                                child: calendarBox(context, "Reminder"),
                              )),
                          SizedBox(
                            height: size.width * 0.1 / 2,
                          ),
                          //notes
                          Expanded(
                              flex: 5,
                              child: Container(
                                child: calendarBox(context, "Notes"),
                              )),
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

  //calendar on tap action method
  void calendartap(CalendarTapDetails details) {}
  Widget buildText1(TextStyle fontTheme, String textItem) {
    return Text(
      textItem,
      textAlign: TextAlign.left,
      style: fontTheme,
    );
  }

  Widget calendarBox(BuildContext context, String title) {
    Size size = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.topLeft,
        width: size.width * 05,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            children: [
              //text
              Expanded(
                  flex: 1,
                  child: Text(
                    title.toUpperCase(),
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
              /*Divider
              Divider(),*/ //i will disable divider first cause it will cause the alignment to be weird
              //Listview
              Expanded(flex: 9, child: ListView())
            ],
          ),
        ));
  }
}
