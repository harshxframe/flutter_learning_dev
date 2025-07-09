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
              "Welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email"
                    ),
                    onChanged: (value){
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
                  ),
                  SizedBox(height: 30),
                  InkWell(
                      onTap: () async {
                        setState(() {
                          if(changeBtn){
                            changeBtn=false;
                          }else{
                            changeBtn=true;
                          }
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);

                      },
                      child:AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeBtn? 50:150,
                        decoration: BoxDecoration(color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(changeBtn? 50:10)
                        ),
                        child:Center(
                          child: changeBtn? Icon(Icons.done, color: Colors.white):Text("Login", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                      )
                  )

                  // ElevatedButton(
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(double.infinity, 50),
                  //     textStyle: TextStyle(fontSize: 23),
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context,MyRoutes.homeRoute);
                  //   },
                  //   child: Text("Click"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
