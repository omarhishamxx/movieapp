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
        SizedBox(height: 25),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 1; i <= 5; i++)
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "images/c$i.jpg",
                        height: 180,
                        width: 300,
                        fit: BoxFit.cover,
                      )),
                )
            ],
          ),
        )
      ],
    );
  }
}
