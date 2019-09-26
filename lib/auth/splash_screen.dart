import 'package:flutter/material.dart';
import 'package:flutter_task/Home/home_screen.dart';
import 'package:flutter_task/auth/login_sccreen.dart';
import 'dart:async';

import 'package:flutter_task/routing/enter_exit_route.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  _SplashScreenState() {
//    _timer = new Timer(const Duration(milliseconds: 1000), () {
//      _timer.cancel();
//
//      Navigator.push(context,
//          EnterExitRoute(exitPage: SplashScreen(), enterPage: LoginScreen()));
//    });
  }

  @override
  void dispose() {
    super.dispose();
//    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'F',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 237, 51, 65)),
                  ),
                  Text(
                    'eedr',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            )));
  }
}
