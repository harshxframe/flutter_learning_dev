import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning_dev/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;
  final forKey = GlobalKey<FormState>();

  moveTOHome(BuildContext context) async {
    if (forKey.currentState!.validate()) {
      setState(() {
        if (changeBtn) {
          changeBtn = false;
        } else {
          changeBtn = true;
        }
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: forKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/img.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(height: 20.0),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 32,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 7) {
                          return "Password length should be atleast 8";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 30),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeBtn ? 50 : 10),
                      child: InkWell(
                        onTap: () => moveTOHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changeBtn ? 50 : 150,

                          child: Center(
                            child:
                                changeBtn
                                    ? Icon(Icons.done, color: Colors.white)
                                    : Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
