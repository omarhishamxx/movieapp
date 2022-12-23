import 'package:flutter/material.dart';
import 'package:movietest1/data/data.dart';
import 'package:movietest1/models/food.dart';
import 'package:movietest1/pages/HomePage.dart';

class NewMoviesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Movies',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i <= 1; i++)
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "moviePage");
                  },
                  child: Container(
                    width: 190,
                    height: 300,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            blurRadius: 3.5,
                            spreadRadius: 4,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.network(
                            Constants.imagebaseurl+ jsonRes.result[0].posterPath;
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Movie1.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Movie1.genre,
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 19,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              Movie1.Rating,
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
