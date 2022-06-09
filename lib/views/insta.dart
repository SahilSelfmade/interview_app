import "package:flutter/material.dart";
import 'horizontal.dart';

class InstaPageView extends StatefulWidget {
  @override
  _InstaPageViewState createState() => _InstaPageViewState();
}

class _InstaPageViewState extends State<InstaPageView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HorizontalListView1(),
        HorizontalListView2(),
        HorizontalListView3(),
        HorizontalListView4(),
      ],
    );
  }
}
