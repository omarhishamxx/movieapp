import 'package:flutter/material.dart';
import 'package:movietest1/Widget/CustomNavBar.dart';

class AdminPan extends StatelessWidget {
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
                          "Admin Panel:",
                          style: TextStyle(
                            color: Color.fromARGB(255, 229, 43, 18),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        Text(
                          "Add new movie",
                          style: TextStyle(
                            color: Color.fromARGB(255, 229, 43, 18),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 170,
                        ),
                        Text(
                          "Remove restricted movie",
                          style: TextStyle(
                            color: Color.fromARGB(255, 229, 43, 18),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
