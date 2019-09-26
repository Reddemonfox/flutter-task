import 'package:flutter/material.dart';
import 'package:flutter_task/Home/home_screen.dart';
import 'package:flutter_task/routing/enter_exit_route.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromARGB(
          255, 22, 26, 36), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 22, 26, 36),
            Color.fromARGB(255, 22, 26, 36),
          ])),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'What\'s',
                        style: TextStyle(
                            color: Color.fromARGB(255, 142, 152, 175),
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      child: Text(
                        'your name ?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 142, 152, 175),
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 15, right: 15, top: 5, bottom: 5),
                            margin: EdgeInsets.only(top: 40),
                            child: new Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.grey,
                                  hintColor: Colors.green),
                              child: TextFormField(
                                controller: null,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                ),
                                decoration: InputDecoration(
                                    border: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.white)),
                                    labelStyle: new TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                    labelText: 'Full Name'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: ClipOval(
                              child: new GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  EnterExitRoute(
                                      exitPage: LoginScreen(),
                                      enterPage: HomeScreen()));
                            },
                            child: Container(
                              color: Color.fromARGB(255, 237, 51, 65),
                              height: 50.0,
                              // height of the button
                              width: 50.0,
                              // width of the button
                              child: Center(
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: Color.fromARGB(255, 237, 51, 65),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
