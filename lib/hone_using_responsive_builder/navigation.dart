import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/home/menu.dart';
import 'package:web/hone_using_responsive_builder/desktop/menu.dart';

class NavBar extends StatefulWidget {

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context,sizingInformation)=> Padding(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: LinearGradient(colors: [
                        Color(0xFFC86DD7),
                        Color(0xFF3023AE),
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                  child: Center(
                    child: Text("B",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text("Britu", style: TextStyle(fontSize: 26))
              ],
            ),
            if (sizingInformation.deviceScreenType != DeviceScreenType.mobile)
             menu(),
            /*else
              IconButton(icon: Image.network("assets/menu.png", width: 26, height: 26),onPressed: (){
                widget.key.currentState.openDrawer();
              },)*/
          ],
        ),
      ),
    );
  }
}
