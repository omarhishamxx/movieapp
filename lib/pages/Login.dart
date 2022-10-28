import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:movietest1/Widget/CustomNavBar.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset(
                "images/logo.jpg",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 229, 43, 18),
                          fontSize: 20),
                    ),
                    InkWell(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Color.fromARGB(255, 229, 43, 18),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "signupScreen");
                      },
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.accessibility,
                                color: Color.fromARGB(255, 229, 43, 18),
                              ),
                            ),
                            Text(
                              ' EMAIL',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 229, 43, 18),
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 229, 43, 18),
                              ),
                            ),
                            Text(' PASSWORD',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 229, 43, 18),
                                    fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 80, right: 80, top: 10, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: Text('SIGN  IN',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 229, 43, 18),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Color.fromARGB(255, 229, 43, 18), fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: SignInButton(
                            Buttons.Google,
                            text: "Sign in",
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, right: 10),
                          child: SignInButton(
                            Buttons.FacebookNew,
                            text: "Sign in",
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
