import 'package:flutter/material.dart';
import 'package:movietest1/Widget/widget.dart';
import 'package:movietest1/pages/pages.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Welcome.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 120),
                  child: Text(
                    'Movie Night',
                    style:
                        GoogleFonts.pacifico(fontSize: 50, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 450,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "loWelcomeScreen");
                    },
                    child: Ink(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 6),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(200, 114, 167, 202),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Let The Party Begin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    )),
                //SizedBox(height: 20),
              ]),
        ),
      ),
    );
  }
}
