import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_app/grid.dart';
import 'package:interview_app/list%20view.dart';
import 'package:interview_app/views/dashboard.dart';

import 'views/grocery.dart';
import 'views/insta.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text('Common Widgets',
              style: GoogleFonts.oswald(
                fontSize: 36,
              )),
          const SizedBox(
            height: 10,
          ),
          _widgets(
            context,
            'Grid View',
            GridPageView(),
          ),
          _widgets(
            context,
            'List View',
            ListPageView(),
          ),
          _widgets(
            context,
            'Instagram Home',
            const GroceryPageView(),
          ),
          _widgets(
            context,
            'PlayStore',
            MyDashboard(),
          ),
        ],
      )),
    );
  }

  Padding _widgets(BuildContext context, name, pageName) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pageName));
          },
          child: Text(name),
        ),
      ),
    );
  }
}
