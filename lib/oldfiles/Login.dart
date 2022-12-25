import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movietest1/Widget/widget.dart';
import 'package:movietest1/pages/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
    Navigator.pushNamed(context, "/");
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/NBack1.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(),
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'Welcome\nBack',
                        style: GoogleFonts.pacifico(
                            color: Colors.white, fontSize: 33),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                        child: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        'Sign in:',
                        style: GoogleFonts.pacifico(
                          color: Colors.white,
                          fontSize: 27,
                          //fontWeight: FontWeight.w700
                        ),
                      ),
                    )),
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          Form(
                            key: formkey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _emailController,
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                            .hasMatch(value)) {
                                      return "Enter Correct Email";
                                    } else
                                      return null;
                                  },
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "Email",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                            .hasMatch(value)) {
                                      return "Enter Correct Password\nIt must contain 1 Upper case\n1 lowercase\n1 Special Character";
                                    } else
                                      return null;
                                  },
                                  style: TextStyle(),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "Password",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "Forgetpass");
                                  },
                                  child: Text(
                                    'Forget Password?',
                                    style: GoogleFonts.pacifico(
                                      color: Colors.red,
                                      fontSize: 15,
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      if (formkey.currentState!.validate()) {
                                        SignIn();
                                      }
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          Column(children: [
                            Text(" OR ",
                                style: GoogleFonts.pacifico(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/google.png"),
                                  //fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ]),
                          Row(
                            children: [
                              Text(
                                "Not a member? ",
                                style: GoogleFonts.pacifico(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "MyRegister");
                                  },
                                  child: Text(
                                    'Register now',
                                    style: GoogleFonts.pacifico(
                                      color: Colors.red,
                                      fontSize: 20,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        //bottomNavigationBar: CustomNavBar(),
      ),
    );
  }
}
