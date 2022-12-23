import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movietest1/Widget/widget.dart';
import 'package:movietest1/pages/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  final formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _FirstNameController = TextEditingController();
  final _LastNameController = TextEditingController();
  String _password = '';
  String _confirmPassword = '';
  Future signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
    adduserdetails(_FirstNameController.text.trim(),
        _LastNameController.text.trim(), _emailController.text.trim());
  }

  Future adduserdetails(String FirstName, String LastName, String Email) async {
    await FirebaseFirestore.instance
        .collection("Users")
        .add({"FirstName": FirstName, "LastName": LastName, "Email": Email});
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
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        'Create Account',
                        style: GoogleFonts.pacifico(
                            color: Colors.white, fontSize: 33),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          Form(
                            key: formkey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _FirstNameController,
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| )+[A-Za-z]+\.?\s*$")
                                            .hasMatch(value)) {
                                      return "Enter Your FirstName";
                                    } else
                                      return null;
                                  },
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "FirstName",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                                SizedBox(height: 15),
                                TextFormField(
                                  controller: _LastNameController,
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))") //+[A-Za-z]+\.?\s*$")
                                            .hasMatch(value)) {
                                      return "Enter Your LastName";
                                    } else
                                      return null;
                                  },
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "LastName",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                                SizedBox(height: 15),
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
                                  height: 15,
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  onChanged: (value) {
                                    _password = value;
                                  },
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
                                SizedBox(height: 15),
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Confirmation Password";
                                    }
                                    if (value != _password) {
                                      return 'Confirm password not matching';
                                    } else
                                      return null;
                                  },
                                  style: TextStyle(),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "Confirm Password",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign Up',
                                style: GoogleFonts.pacifico(
                                  color: Colors.white,
                                  fontSize: 27,
                                  //fontWeight: FontWeight.w700
                                ),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      if (formkey.currentState!.validate()) {
                                        signup();
                                      }
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Text(
                                "Already have an account? ",
                                style: GoogleFonts.pacifico(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "MyLogin");
                                  },
                                  child: Text(
                                    'Log In',
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
