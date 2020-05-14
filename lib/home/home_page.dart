import 'package:flutter/material.dart';

import 'content.dart';
import 'menu.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("test")),
      drawer: MediaQuery.of(context).size.width < 1000 ? Drawer(
        child: Menu(),
      ) : null,
      body: SafeArea(
          child:Center(
              child: MediaQuery.of(context).size.width < 1000 ? Content() :
              Row(
                  children: [
                    Container(
                        width: 200.0,
                        child: Menu()
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width-200,
                        child: Content()
                    )
                  ]
              )
          )
      )
  );
}