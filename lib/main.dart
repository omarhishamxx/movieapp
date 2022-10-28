import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movietest1/pages/FavPage.dart';
import 'package:movietest1/pages/HomePage.dart';
import 'package:movietest1/pages/Login.dart';
import 'package:movietest1/pages/SearchPage.dart';
import 'package:movietest1/pages/Signup.dart';
import 'package:movietest1/pages/UserPage.dart';
import 'package:movietest1/pages/register.dart';
import 'pages/forgetpassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF0F111D)),
      routes: {
        "/": (context) => HomePage(),
        "SearchPage": (context) => SearchPage(),
        "FavPage": (context) => FavPage(),
        "UserPage": (context) => UserPage(),
        "MyLogin": (context) => MyLogin(),
        "signupScreen": (context) => signupScreen(),
        "MyRegister": (context) => MyRegister(),
        "Forgetpass": (context) => Forgetpass(),
      },
    );
  }
}
