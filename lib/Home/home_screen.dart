import 'package:flutter/material.dart';
import 'package:flutter_task/Home/home_screen.dart';
import 'package:flutter_task/Home/search_screen.dart';
import 'package:flutter_task/Home/top_slider_items.dart';
import 'package:flutter_task/auth/login_sccreen.dart';
import 'package:flutter_task/routing/fade_route.dart';
import 'dart:async';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task/routing/enter_exit_route.dart';
import 'package:flutter/foundation.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'bottom_list_wrapper.dart';
import 'category_tabs.dart';

Future<List<Post>> fetchPost(http.Client client) async {
  var response = await http.get(
      'https://newsapi.org/v2/top-headlines?country=gb&category=technology&apiKey=813fecd4622341d0b677077ca058c166');
  return compute(parsePosts, response.body);
}

List<Post> parsePosts(String responseBody) {
  final Map<String, dynamic> parsed = json.decode(responseBody);
  return parsed['articles'].map<Post>((json) => Post.fromJson(json)).toList();
}

class Post {
  bool isChecked;
  final String title;
  final String urlToImage;

  Post({this.isChecked = false, this.title, this.urlToImage});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        isChecked: false,
        title: json['title'] as String,
        urlToImage: json['urlToImage'] as String);
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  _HomeScreenState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromARGB(255, 22, 26, 36),
    ));
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Text(''),
                color: Color.fromARGB(255, 237, 51, 65),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Text(''),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 22, 26, 36),
                      Color.fromARGB(255, 22, 26, 36),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Container(
                          child: Text(
                            'F',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Feed',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        child: new GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, FadeRoute(page: SearchScreen()));
                          },
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            body: SingleChildScrollView(
              child: Container(
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        height: MediaQuery.of(context).size.height * 0.36,
                        child: Container(
                          child: topList(),
                        ),
                      ),
                      Container(
                          color: Color.fromARGB(255, 22, 26, 36),
                          padding: EdgeInsets.only(top: 50),
                          width: double.infinity,
                          child: categoryTabBar()),
                      Container(
                        color: Color.fromARGB(255, 22, 26, 36),
                        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: bottomList(),
                      )
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
