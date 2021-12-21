import 'package:flutter/material.dart';

class courseInfo extends StatefulWidget {
  const courseInfo({Key? key}) : super(key: key);

  @override
  _courseInfoState createState() => _courseInfoState();
}

class _courseInfoState extends State<courseInfo> {
  @override
  Widget build(BuildContext context) {
    String test =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat et libero vel tempor. Maecenas tortor lacus, rutrum eu libero ac, iaculis blandit purus. Pellentesque non velit aliquet, pharetra sem et, placerat nunc. Sed non urna eget sapien ultrices lobortis. Proin sit amet ipsum purus. Pellentesque nibh orci, placerat at dui commodo, consequat dapibus leo. Vestibulum sit amet fringilla ipsum. Mauris non pellentesque enim. Sed viverra odio ut dignissim rutrum. Maecenas pharetra laoreet justo, ut sodales diam gravida a. Proin ultricies, purus a condimentum mollis, augue ligula varius nibh, vitae maximus odio ipsu';
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.deepPurpleAccent,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Flexible(
              flex: 3,
              child: Image(
                  image: AssetImage('assets/images/computing_1200x400.jpg')),
            ),
          ),
          Expanded(
              flex: 7,
              child: Flexible(
                flex: 7,
                child: Text(test),
              ))
        ],
      ),
    );
  }
}
