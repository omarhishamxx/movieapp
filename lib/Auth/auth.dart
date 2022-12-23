import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movietest1/Widget/navbar.dart';
import 'package:movietest1/pages/pages.dart';
import 'package:movietest1/pages/test.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Loggedin();
          } else {
            return Navi();
          }
        },
      ),
    );
  }
}
