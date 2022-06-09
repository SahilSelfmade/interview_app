import 'package:flutter/material.dart';

class GridPageView extends StatelessWidget {
  GridPageView({Key? key}) : super(key: key);
  List<String> images = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2022/06/08/10/20/lighthouse-7250229_960_720.jpg",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2022/06/08/10/20/lighthouse-7250229_960_720.jpg",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2022/06/08/10/20/lighthouse-7250229_960_720.jpg",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://cdn.pixabay.com/photo/2021/11/30/08/24/strawberries-6834750_960_720.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GridView.builder(
              // scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: images.length,
              itemBuilder: (BuildContext context, index) {
                return Image.network(images[index]);
              }),
        ),
      ),
    );
  }
}
