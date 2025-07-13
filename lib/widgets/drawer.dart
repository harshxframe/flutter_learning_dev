import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatefulWidget{
const MyDrawer({super.key});
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  
  final imagUrl = "https://media.licdn.com/dms/image/v2/D5603AQHw79uYzk8DYg/profile-displayphoto-shrink_200_200/B56ZcyJRnGHgAY-/0/1748892982917?e=2147483647&v=beta&t=Icjh43MjV12jvbXGAfuQmZLXBFghq1ORJYyUOdfIcaI";
  String title = "Home";
  bool dyn = false;



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple
                  ),
                margin: EdgeInsets.zero,
                accountName: Text("Harsh Verma"),
                accountEmail: Text("harsh@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imagUrl),
                  ),

            ),
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,color: Colors.white,
                ),
              title: Text(
                "Home",style: TextStyle(color: Colors.white
              ),
              )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.heart,color: Colors.white,
                ),
                title: Text(
                  "WishList",style: TextStyle(color: Colors.white
                ),
                )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,color: Colors.white,
                ),
                title: Text(
                  "Email me",style: TextStyle(color: Colors.white
                ),
                )
            )
              ],
        ),
      ),
    );
  }}

