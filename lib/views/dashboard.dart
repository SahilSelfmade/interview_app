import 'package:interview_app/views/insta.dart';
import 'package:flutter/material.dart';

import 'mynav.dart';
import 'search.dart';

class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard>
    with SingleTickerProviderStateMixin {
  late TabController _googlePlayStoreController;

  @override
  void initState() {
    super.initState();
    _googlePlayStoreController =
        new TabController(vsync: this, initialIndex: 0, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Play"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: GooglePlaySearch());
            },
          ),
          Icon(Icons.keyboard_voice),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          ),
        ],
        bottom: new TabBar(
          controller: _googlePlayStoreController,
          indicatorColor: Colors.white,
          isScrollable: true,
          tabs: [
            new Tab(text: "HOME"),
            new Tab(text: "GAMES"),
            new Tab(text: "MOVIES"),
            new Tab(text: "BOOKS"),
            new Tab(text: "MUSIC"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _googlePlayStoreController,
        children: [
          new InstaPageView(),
          new InstaPageView(),
          new InstaPageView(),
          new InstaPageView(),
          new InstaPageView(),
        ],
      ),
      drawer: Drawer(
        child: MyNavigationDrawer(),
      ),
    );
  }
}
