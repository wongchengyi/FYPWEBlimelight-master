import 'package:flutter/material.dart';

class enrollDialog extends StatelessWidget {
  const enrollDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      child: _buildChild(context, h, w, "subject 1"),
    );
  }

  _buildChild(BuildContext context, double this_height, double this_width,
          String subject) =>
      Container(
        height: this_height * 0.4,
        width: this_width * 0.6,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                //1st container consists of the title and the cross button
                Container(
                  width: this_width,
                  height: this_height * 0.1,
                  //color: Colors.yellow,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 8,
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Enrollment  '.toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: this_height * 0.03)),
                              TextSpan(
                                  text: subject,
                                  style: TextStyle(
                                      color: Color(0xFF1E90FE),
                                      fontWeight: FontWeight.bold,
                                      fontSize: this_height * 0.03)),
                            ]),
                          )),
                      Expanded(
                        flex: 2,
                        child: Container(
                            alignment: Alignment.topRight,
                            child: FlatButton(
                                shape: CircleBorder(),
                                onPressed: () {},
                                child: Icon(Icons.close))),
                      )
                    ],
                  ),
                ),
                //2nd lower container which consists all of the main content
                Container(
                  width: this_width,
                  //color: Colors.yellow,
                  height: this_height * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 9,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/placeholderimage.png")),
                              ),
                              RichText(
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: 'Text 1  '.toUpperCase(),
                                      style: TextStyle(
                                          color: Color(0xFF1E90FE),
                                          fontWeight: FontWeight.bold,
                                          fontSize: this_height * 0.03)),
                                  TextSpan(
                                      text: 'text 2',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: this_height * 0.03)),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
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
              color: Colors.green,
            )),
      ),
      onPressed: () {}, //=> changeText,
      color: Color(colorCode),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
