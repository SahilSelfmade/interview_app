import 'package:flutter/material.dart';

class MyNavigationDrawer extends StatelessWidget {
  final _menutextcolor = const TextStyle(
    color: Colors.black,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  final _iconcolor = new IconThemeData(
    color: const Color(0xff757575),
  );
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: const Text("SahilSelfmade@gmail.com"),
          accountName: const Text("Sahil Kaushal"),
          currentAccountPicture: Image.asset('assets/images/avatar.png'),
        ),
        ListTile(
          leading: IconTheme(
            data: _iconcolor,
            child: const Icon(Icons.apps),
          ),
          title: Text("My apps & games", style: _menutextcolor),
          selected: true,
          onTap: () {},
        ),
        ListTile(
          leading: IconTheme(
            data: _iconcolor,
            child: const Icon(Icons.notifications),
          ),
          title: Text("Notification", style: _menutextcolor),
          onTap: () {},
        ),
        ListTile(
          leading: IconTheme(
            data: _iconcolor,
            child: const Icon(Icons.sync),
          ),
          title: Text("Subscription", style: _menutextcolor),
          onTap: () {},
        ),
        ListTile(
          leading: IconTheme(
            data: _iconcolor,
            child: const Icon(Icons.collections_bookmark),
          ),
          title: Text("Wishlist", style: _menutextcolor),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          leading: IconTheme(
            data: _iconcolor,
            child: const Icon(Icons.account_box),
          ),
          title: Text("Account", style: _menutextcolor),
          onTap: () {},
        ),
        ListTile(
          leading: IconTheme(
            data: _iconcolor,
            child: const Icon(Icons.credit_card),
          ),
          title: Text("Payment methods", style: _menutextcolor),
          onTap: () {},
        ),
        ListTile(
          leading: IconTheme(
            data: _iconcolor,
            child: const Icon(Icons.security),
          ),
          title: Text("Play Protect", style: _menutextcolor),
          onTap: () {},
        ),
        ListTile(
          leading: IconTheme(
            data: _iconcolor,
            child: const Icon(Icons.settings),
          ),
          title: Text("Settings", style: _menutextcolor),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          title: Text("Redeem", style: _menutextcolor),
          onTap: () {},
        ),
        ListTile(
          title: Text("Help & feedback", style: _menutextcolor),
          onTap: () {},
        ),
        ListTile(
          title: Text("Parent Guide", style: _menutextcolor),
          onTap: () {},
        ),
        const Divider(
          height: 10.0,
        ),
        ListTile(
          title: Text("About Google Play", style: _menutextcolor),
          onTap: () {},
        ),
      ],
    );
  }
}
