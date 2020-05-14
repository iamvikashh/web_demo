import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';


class SendBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context,sizingInformation)=>InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFC86DD7),
              Color(0xFF3023AE),
            ], begin: Alignment.bottomRight, end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF6078ea).withOpacity(.3),
                  offset: Offset(0.0, 8.0),
                  blurRadius: 8.0)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   if (sizingInformation.deviceScreenType!=DeviceScreenType.mobile)
                     Text("Notify",
                         style: TextStyle(
                             color: Colors.white,
                             fontFamily: "Montserrat-Bold",
                             fontSize: sizingInformation==DeviceScreenType.mobile
                                 ? 12
                                 : 16,
                             letterSpacing: 1.0)),
                     SizedBox(
                       width: sizingInformation==DeviceScreenType.mobile
                           ? 4
                           : 8,
                     ),
                     Image.network(
                       "assets/sent.png",
                       color: Colors.white,
                       width: sizingInformation==DeviceScreenType.mobile
                           ? 12
                           : 20,
                       height: sizingInformation==DeviceScreenType.mobile
                           ? 12
                           : 20,
                     ),

                 /*   if (sizingInformation.deviceScreenType==DeviceScreenType.mobile)
                      Image.network(
              "assets/sent.png",
              color: Colors.white,
              width: 12
                  ,
              height:12,
            )*/
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
