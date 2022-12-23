import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.blueGrey,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Discover',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19, vertical: 13),
                child: Column(
                  children: [
                    for (int i = 1; i <= 14; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.blueGrey,
                                    spreadRadius: 2,
                                    blurRadius: 3),
                              ]),
                              child: ClipRRect(
                                child: Image.asset(
                                  'images/$i.png',
                                  width: 90,
                                  height: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'Category',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
