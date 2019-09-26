import 'package:flutter/material.dart';
import 'package:flutter_task/Home/like_without_background.dart';
import 'package:transparent_image/transparent_image.dart';

import 'home_screen.dart';

Widget bottomItem(Post post) {
  return post.urlToImage != null
      ? Card(
          margin: EdgeInsets.all(3),
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color.fromARGB(255, 22, 26, 36),
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            image: post.urlToImage,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.only(top: 7, bottom: 7),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(top: 2, left: 4),
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
                          ),
                          LikeWithoutBackground(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      : Container();
}
