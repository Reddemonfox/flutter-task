import 'package:flutter/material.dart';

class LikeWithoutBackground extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LikeWithoutBackgroundState();
  }
}

class _LikeWithoutBackgroundState extends State<LikeWithoutBackground> {
  var clicked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (this.clicked)
      return ClipOval(
          child: new GestureDetector(
        onTap: () {
          setState(() {
            this.clicked = !this.clicked;
          });
        },
        child: Padding(
          padding: EdgeInsets.only(top:5, left: 10, right: 5),
          child: Icon(
            Icons.thumb_up,
            color: Color.fromARGB(255, 237, 51, 65),
            size: 20.0,
          ),
        ),
      ));
    return ClipOval(
        child: new GestureDetector(
      onTap: () {
        setState(() {
          this.clicked = !this.clicked;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(top:5, left: 10, right: 5),
        child: Icon(
          Icons.thumb_up,
          color: Color.fromARGB(255, 60, 70, 85),
          size: 20.0,
        ),
      ),
    ));
  }
}
