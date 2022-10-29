import 'package:flutter/material.dart';
import 'package:movietest1/Widget/CustomNavBar.dart';
import 'package:movietest1/Widget/Upcomingwidget.dart';

import '../Widget/NewMoviesWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Movie Night",
                          style: TextStyle(
                            color: Color.fromARGB(255, 229, 43, 18),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "What to watch?",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "images/app_logo.png",
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                  ),
                  Container(
                    width: 250,
                    margin: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white54),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 15),
              Upcomingwidget(),
              SizedBox(height: 20),
              NewMoviesWidget(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
