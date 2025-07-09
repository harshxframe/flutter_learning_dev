import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/img.png", fit: BoxFit.cover),
          SizedBox(height: 20.0),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                  style: TextButton.styleFrom(),
                  onPressed: () {},
                  child: Text("Click"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
