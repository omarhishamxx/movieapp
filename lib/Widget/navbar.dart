import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movietest1/pages/pages.dart';

class Navi extends StatefulWidget {
  const Navi({Key? key}) : super(key: key);
  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  List Screens = [
    HomePage(),
    CategoryPage(),
    FavPage(),
    loWelcomeScreen(),
  ];
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: _bottomNavigationKey,
        animationCurve: Curves.easeInOut,
        index: _page,
        height: 60,
        color: Color.fromARGB(255, 186, 0, 35),
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            Icons.home,
            color: Colors.black,
          ), // Icon
          Icon(Icons.whatshot, color: Colors.black),
          Icon(Icons.favorite, color: Colors.black),
          Icon(Icons.person, color: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Screens[_page],
      //body: Screens[_page],
    );
  }
}

class Loggedin extends StatefulWidget {
  const Loggedin({Key? key}) : super(key: key);
  @override
  State<Loggedin> createState() => _LoggedinState();
}

class _LoggedinState extends State<Loggedin> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  List loggedScreens = [
    HomePage(),
    CategoryPage(),
    FavPage(),
    Userpage(),
  ];
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: _bottomNavigationKey,
        animationCurve: Curves.easeInOut,
        index: _page,
        height: 60,
        color: Color.fromARGB(255, 186, 0, 35),
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            Icons.home,
            color: Colors.black,
          ), // Icon
          Icon(Icons.whatshot, color: Colors.black),
          Icon(Icons.favorite, color: Colors.black),
          Icon(Icons.person, color: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: loggedScreens[_page],
      //body: Screens[_page],
    );
  }
}
