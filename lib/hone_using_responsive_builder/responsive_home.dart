

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/hone_using_responsive_builder/mobile/app_drawer.dart';
import 'package:web/hone_using_responsive_builder/desktop/menu.dart';

import 'body.dart';
import 'navigation.dart';

class ResponsiveHome extends StatefulWidget {
  @override
  _ResponsiveHomeState createState() => _ResponsiveHomeState();
}

class _ResponsiveHomeState extends State<ResponsiveHome> {
  final GlobalKey scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context,sizingInformation)=> Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.cyanAccent,
            Colors.cyan,
          ])),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,
          elevation: 0,leading: Container(),),
        endDrawer: sizingInformation.deviceScreenType==DeviceScreenType.mobile ? AppDrawer():null,
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      ),
    ));
  }
}
