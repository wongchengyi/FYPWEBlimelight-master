import 'package:flutter/material.dart';

class logoButton extends StatelessWidget {
  final String logoURL;
  const logoButton({Key? key, required this.size, required this.logoURL})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      width: size.width * 0.04,
      //padding: EdgeInsets.all(5),
      child: Center(
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black, //splash color
                minimumSize: Size(size.width * 0.1, size.height * 0.1),
                splashFactory: InkRipple.splashFactory,
                shape: CircleBorder(),
                elevation: 20),
            child: Image.asset(
              logoURL,
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
