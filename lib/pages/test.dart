import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class test1 extends StatelessWidget {
  const test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Welcome.jpg"), fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Movie Night',
                          style: GoogleFonts.pacifico(
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor:
                                Color.fromARGB(200, 114, 167, 202)),
                        onPressed: () {
                          Navigator.pushNamed(context, "Auth");
                        },
                        child: Text(
                          "Let The Party Begin",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      //bottomNavigationBar: CustomNavBar(),
    );
  }
}
