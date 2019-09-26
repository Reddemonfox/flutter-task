import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_task/Home/home_screen.dart';
import 'package:flutter_task/Home/like_with_background.dart';

import 'package:http/http.dart' as http;

import 'package:transparent_image/transparent_image.dart';

Widget topList() {
  return FutureBuilder<List<Post>>(
      future: fetchPost(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Post post = snapshot.data[index];
                  return post.urlToImage != null ? Container(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: Card(
                      margin: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color.fromARGB(255, 41, 47, 62),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                  image:
                                  post.urlToImage,
                                ),
                              ),
                            ),
                          ),
                                Container(
                                  color: Colors.transparent,
                                  padding: EdgeInsets.only(top: 7, bottom: 7),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            child: Icon(
                                              Icons.remove_red_eye,
                                              color: Color.fromARGB(
                                                  255, 142, 152, 175),
                                              size: 20.0,
                                            ),
                                            padding: EdgeInsets.all(3),
                                          ),
                                          Padding(
                                            child: Text(
                                              '3 min.',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 142, 152, 175),
                                              ),
                                            ),
                                            padding: EdgeInsets.all(3),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        child: Text(
                                          post.title,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15),
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                color: Color.fromARGB(255, 237, 51, 65),
                                child: Text(
                                  'MOBILE',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 8, right: 8),
                              ),
                            ),
                            padding: EdgeInsets.all(20),
                          ),
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width * 0.18),
                            child: LikeWithBackground(),
                            padding: EdgeInsets.all(10),
                          )
                        ],
                      ),
                    ),
                  ) : Container();
                },
              )
            : Container();
      });
}
