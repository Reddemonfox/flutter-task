import 'package:flutter/material.dart';

Widget categoryTabBar() {
  return DefaultTabController(
    length: 4,
    child: PreferredSize(
        child: TabBar(
            isScrollable: true,
            unselectedLabelColor: Color.fromARGB(255, 142, 152, 175),
            indicatorColor: Colors.transparent,
            indicatorWeight: 0.2,
            tabs: [
              Tab(
                child: Text(
                  'All',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  'Popular',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  'Last 24 Hours',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  'Last Week',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              )
            ]),
        preferredSize: Size.fromHeight(30.0)),
  );
}
