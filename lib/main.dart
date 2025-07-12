import 'package:flutter/material.dart';
import 'package:flutter_learning_dev/pages/login_page.dart';
import 'package:flutter_learning_dev/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_learning_dev/utils/routes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()},
    );
  }
}
