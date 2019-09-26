import 'package:flutter/material.dart';

class LikeWithBackground extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LikeWithBackgroundState();
  }
}

class _LikeWithBackgroundState extends State<LikeWithBackground> {
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
        child: Container(
          color: Color.fromARGB(255, 237, 51, 65),
          height: 40.0,
          // height of the button
          width: 40.0,
          // width of the button
          child: Center(
            child: Icon(
              Icons.thumb_up,
              color: Colors.white,
              size: 20.0,
            ),
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
      child: Container(
        color: Color.fromARGB(255, 60, 70, 85),
        height: 40.0,
        // height of the button
        width: 40.0,
        // width of the button
        child: Center(
          child: Icon(
            Icons.thumb_up,
            color: Color.fromARGB(255, 41, 47, 62),
            size: 20.0,
          ),
        ),
      ),
    ));
  }
}
