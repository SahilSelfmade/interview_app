import 'package:flutter/material.dart';

class AboutPageView extends StatelessWidget {
  const AboutPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // App Bar with Logo & Text
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.verified_user,
              color: Colors.blue,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circle Avatar Image
                const SizedBox(
                  height: 160,
                  width: 160,
                  // ignore: unnecessary_const
                  child: const CircleAvatar(
                    radius: 120,
                    backgroundImage: NetworkImage(
                        'https://yt3.ggpht.com/S94jUg23JkTVNBGUdAUU8sLtVZdR1DnF6Uwh1LE7nxLLwFf1BNpjedvEatb2HfsP37ZdHShY=s900-c-k-c0x00ffffff-no-rj'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Basic Details
                Padding(
                  padding: const EdgeInsets.symmetric(
                    // vertical: 0,
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _Rows(
                        icon: Icons.supervised_user_circle,
                        heading: 'Name',
                        headingValue: 'Sahil Kaushal',
                      ),
                      _Rows(
                        icon: Icons.phone,
                        heading: 'Phone',
                        headingValue: '+91-7066000016',
                      ),
                      _Rows(
                        icon: Icons.work,
                        heading: 'Joining Date',
                        headingValue: '09-12-2020',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Rows extends StatelessWidget {
  const _Rows(
      {Key? key, required this.heading, this.icon, required this.headingValue})
      : super(key: key);

  final String heading;
  final String headingValue;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .5,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.blue,
                  size: 16,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  heading,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
            Text(
              headingValue,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                overflow: TextOverflow.clip,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
