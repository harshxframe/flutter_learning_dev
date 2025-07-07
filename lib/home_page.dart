import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final String days = "Hello Again";
    return Scaffold(
      appBar: AppBar(title: Text("Hello Boss"),),
        body:Material(
          child: Center(
            child: Text("Hello $days Harsh Sir! From External file"),
          ),
        ),
      drawer: Drawer(),
    );
  }

}