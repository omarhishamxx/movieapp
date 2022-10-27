import "package:flutter/material.dart";

class NewMoviesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("New Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                )),
            Text("See all",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15,
                ))
          ]),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            InkWell(
              onTap: () {},
              child: Container(
                  width: 190,
                  height: 300,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Color(0xff292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF29282B37).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [],
                  )),
            )
          ]),
        )
      ],
    );
  }
}
