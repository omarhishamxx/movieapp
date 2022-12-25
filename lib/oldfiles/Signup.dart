import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:movietest1/Widget/CustomNavBar.dart';

class signupScreen extends StatefulWidget {
  _signupScreenState createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.accessibility,
                                color: Color.fromARGB(255, 229, 43, 18),
                              ),
                            ),
                            Text(
                              ' NAME',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 229, 43, 19),
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
                    padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
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
                    padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.accessibility,
                                color: Color.fromARGB(255, 229, 43, 18),
                              ),
                            ),
                            Text(
                              ' PASSWORD',
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
                    padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 229, 43, 18),
                              ),
                            ),
                            Text('CONFIRM PASSWORD',
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
                          child: Text('SIGN UP',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 229, 43, 18),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
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
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
