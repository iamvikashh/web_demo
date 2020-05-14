import 'package:flutter/material.dart';

var navLinks = ["Home", "Products", "Features", "Contact"];
menu(){
  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(text, style: TextStyle(fontFamily: "Montserrat-Bold")),
      );
    }).toList();
  }
 return Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[...navItem()],
);}
/*
mobileDrawer(){
  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(top: 18),
        child: Container(color: Colors.cyan,
            child: ListTile(title:Text(text, style: TextStyle(fontFamily: "Montserrat-Bold")))),
      );
    }).toList();
  }
  return Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[...navItem()],
);}*/
