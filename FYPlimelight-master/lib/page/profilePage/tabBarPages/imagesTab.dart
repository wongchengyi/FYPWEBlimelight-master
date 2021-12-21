import 'package:flutter/material.dart';

class imagesTab extends StatefulWidget {
  const imagesTab({Key? key}) : super(key: key);

  @override
  _imagesTabState createState() => _imagesTabState();
}

class _imagesTabState extends State<imagesTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.025, horizontal: size.width * 0.020),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText("images"),
              Expanded(child: imagePlaceholder(context))
            ],
          ),
        ));
  }
}

//widget for building text according to different colors
Widget buildText(String text) {
  return SizedBox(
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF22C1BA),
      ),
    ),
  );
}

//widget for image placeholder/holding random images
Widget imagePlaceholder(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    child: GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      //mainAxisSpacing: 10,
      children: <Widget>[
        fetchImage(context, 'assets/images/placeholderimage.png'),
        fetchImage(context, 'assets/images/placeholderimage.png'),
        fetchImage(context, 'assets/images/placeholderimage.png'),
        fetchImage(context, 'assets/images/placeholderimage.png'),
        fetchImage(context, 'assets/images/placeholderimage.png'),
        fetchImage(context, 'assets/images/placeholderimage.png'),
        fetchImage(context, 'assets/images/placeholderimage.png'),
        fetchImage(context, 'assets/images/placeholderimage.png'),
      ],
    ),
  );
}

//container/widget to fetch image
Widget fetchImage(BuildContext context, String picURL) {
  return FittedBox(
    child: Image(image: AssetImage(picURL)),
  );
}
