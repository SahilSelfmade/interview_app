import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about.dart';

class GroceryPageView extends StatefulWidget {
  const GroceryPageView({Key? key}) : super(key: key);

  @override
  State<GroceryPageView> createState() => _GroceryPageViewState();
}

class _GroceryPageViewState extends State<GroceryPageView> {
  int currentTab = 0; // to keep track of active tab index
  late final List<Widget> screens; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  late Widget currentScreen; // Our first view in viewport
  var connectivityResult;

  @override
  void initState() {
    // to store nested tabs
    screens = [
      GroceryPageViewData(),
      const AboutPageView(),
      //  Reports(),
    ];

    currentScreen = GroceryPageViewData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff8faf8),
        centerTitle: true,
        elevation: 5.0,
        title: Text('Instagram',
            style: GoogleFonts.mukta(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            )),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2.0,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = GroceryPageViewData();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: currentTab == 0 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const AboutPageView();

                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.verified_user,
                      color: currentTab == 1 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: currentTab == 1 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const AboutPageView();

                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.audio_file,
                      color: currentTab == 1 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'Podcasts',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: currentTab == 1 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GroceryPageViewData extends StatefulWidget {
  GroceryPageViewData({Key? key}) : super(key: key);

  @override
  State<GroceryPageViewData> createState() => _GroceryPageViewDataState();
}

class _GroceryPageViewDataState extends State<GroceryPageViewData> {
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

  bool isPostLiked = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Column(
        children: [
          Image.network(
            images[index],
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isPostLiked = !isPostLiked;
                  });
                },
                padding: const EdgeInsets.all(0.0),
                icon: Icon(
                  isPostLiked ? Icons.favorite : FontAwesomeIcons.heart,
                  size: 22.0,
                ),
                // ignore: dead_code
                color: isPostLiked ? Colors.red : Colors.black,
              ),
              IconButton(
                onPressed: () {},
                padding: const EdgeInsets.all(0.0),
                icon: Icon(
                  isPostLiked ? Icons.comment : FontAwesomeIcons.comment,
                  size: 22.0,
                ),
                // ignore: dead_code
                color: isPostLiked ? Colors.red : Colors.black,
              ),
              IconButton(
                onPressed: () {},
                padding: const EdgeInsets.all(0.0),
                icon: Icon(
                  isPostLiked ? Icons.share : FontAwesomeIcons.share,
                  size: 22.0,
                ),
                // ignore: dead_code
                color: isPostLiked ? Colors.red : Colors.black,
              )
            ],
          )
        ],
      );
    });
  }
}
