import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movietest1/Auth/auth.dart';
import 'package:movietest1/Widget/navbar.dart';
import 'package:movietest1/pages/pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movietest1/pages/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: AuthPage(),
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 32, 26, 48)),
      //initialRoute: 'WelcomeScreen',
      routes: {
        "Homepage": (context) => HomePage(),
        "WelcomeScreen": (context) => WelcomeScreen(),
        "RecommPage": (context) => CategoryPage(),
        "FavPage": (context) => FavPage(),
        "Userpage": (context) => Userpage(),
        "MyLogin": (context) => MyLogin(),
        "MyRegister": (context) => MyRegister(),
        "Forgetpass": (context) => Forgetpass(),
        "AdminPan": (context) => AdminPan(),
        "loWelcomeScreen": (context) => loWelcomeScreen(),
        "navi": (context) => Navi(),
        "Auth": (context) => AuthPage(),
        "LoginNew": (context) => LoginNew(),
        "RegisterNew": (context) => RegisterNew(),
        "ForgetNew": (context) => ForgetNew(),
      },
    );
  }
}
