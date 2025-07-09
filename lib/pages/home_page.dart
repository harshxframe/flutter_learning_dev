import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String days = "Hello Again";
    return Scaffold(
      appBar: AppBar(title: Text("Go Abroad")),
      body: Material(
        child: Center(child: Text("Hello $days Harsh Sir! From External file")),
      ),
      drawer: Drawer(),
    );
  }
}
