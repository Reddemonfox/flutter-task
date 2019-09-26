import 'package:flutter/material.dart';
import 'package:flutter_task/Home/home_screen.dart';

import 'bottom_list_item_card.dart';
import 'package:http/http.dart' as http;
import 'package:flare_flutter/flare_actor.dart';

Widget bottomList() {
  return FutureBuilder<List<Post>>(
    future: fetchPost(http.Client()),
    builder: (context, snapshot) {
      if (snapshot.hasError) print(snapshot.error);
      return snapshot.hasData
          ? Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[0]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[2]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[4]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[6]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[8]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[10]),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[1]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[3]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[5]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[7]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[9]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          child: bottomItem(snapshot.data[11]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Container();
    },
  );
}
