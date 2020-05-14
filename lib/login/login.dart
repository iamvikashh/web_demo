import 'package:flutter/material.dart';
import 'package:web/home/home_page.dart';
import 'package:web/hone_using_responsive_builder/responsive_home.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(context) =>
      Scaffold(
          body: LayoutBuilder(
              builder: (context, constraints) {
                return AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    color: Colors.lightGreen[200],
                    padding: constraints.maxWidth < 500 ? EdgeInsets.zero : EdgeInsets.all(30.0),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 25.0
                        ),
                        constraints: BoxConstraints(
                          maxWidth: 500,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Welcome to the app, please log in"),
                                TextField(
                                    decoration: InputDecoration(
                                        labelText: "username"
                                    )
                                ),
                                TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        labelText: "password"
                                    )
                                ),
                                RaisedButton(
                                    color: Colors.blue,
                                    child: Text("Page 1", style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HomePage()
                                          )
                                      );
                                    }
                                ),
                                RaisedButton(
                                    color: Colors.blue,
                                    child: Text("Page 2", style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ResponsiveHome()
                                          )
                                      );
                                    }
                                )
                              ]
                          ),
                        ),
                      ),
                    )
                );
              }
          )
      );
}