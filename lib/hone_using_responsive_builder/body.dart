import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web/hone_using_responsive_builder/desktop/desktop_view.dart';

import 'mobile/mobile_view.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizingInformation)=>
          ScreenTypeLayout(tablet: Container(),
            watch: Container(),
            desktop:DesktopView(),
            mobile: MobileView(),
          ),
    );
  }
}
