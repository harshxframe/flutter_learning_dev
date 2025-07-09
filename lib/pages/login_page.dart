import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning_dev/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/img.png", fit: BoxFit.cover, height: 300),
            SizedBox(height: 20.0),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      textStyle: TextStyle(fontSize: 23),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context,MyRoutes.homeRoute);
                    },
                    child: Text("Click"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
