import 'package:flutter/material.dart';
import 'package:flutter_task/Home/home_screen.dart';
import 'package:flutter_task/auth/login_sccreen.dart';
import 'dart:async';

import 'package:flutter_task/routing/enter_exit_route.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchScreenState();
  }
}

class _SearchScreenState extends State<SearchScreen> {
  Timer _timer;

  _SearchScreenState() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.chevron_left),
          onPressed:() => Navigator.pop(context, false),
        ),
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(1.0)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Container(
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: null,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    decoration: new InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
      ),
    );
  }
}
