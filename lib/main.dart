import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import './auth/login_sccreen.dart';

void main() {
  runApp(ECommerceApp());
}

class ECommerceApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ECommerceAppState();
  }
}

class _ECommerceAppState extends State<ECommerceApp> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SplashScreen(
        'assets/splash.flr',
        LoginScreen(),
        startAnimation: 'start',
        until: () => Future.delayed(Duration(seconds: 1)),
        backgroundColor: Color.fromARGB(255, 22, 26, 36),
      ),
    );
  }
}
