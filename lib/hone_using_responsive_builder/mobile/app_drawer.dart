import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createHeader(),
          createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {}),
          createDrawerItem(
              icon: Icons.favorite,
              text: "Product",
              onTap: () {}),
          createDrawerItem(
              icon: Icons.settings,
              text: 'Features',
              onTap: () {}),
          createDrawerItem(
              icon: Icons.contact_phone, text: 'Contact'),

        ],
      ),
    );
  }
}

Widget createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Colors.cyan,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/image_02.png'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Menu",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
