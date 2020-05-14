import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/hone_using_responsive_builder/utils/sendbtn.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context,sizingInformation)=>Padding(
      padding: EdgeInsets.only(
        left: 4.0,
        right: DeviceScreenType.mobile==sizingInformation ? 4 : 74,
        top: 10,
        bottom: 40,
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 8), blurRadius: 8)
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your Email Address'),
                  )),
              Expanded(
                flex: 2,
                child: SendBtn(),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
