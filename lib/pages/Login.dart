import 'package:flutter/material.dart';
import 'package:movietest1/Widget/widget.dart';
import 'package:movietest1/pages/pages.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formkey = GlobalKey<FormState>();
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
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(),
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'Welcome\nBack',
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                        child: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        'Sign in:',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.w700),
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
                          SizedBox(
                            height: 30,
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()));
                                      }
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'MyRegister');
                                },
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    backgroundColor:
                                        Color.fromARGB(255, 186, 0, 35)),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      backgroundColor:
                                          Color.fromARGB(255, 186, 0, 35)),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "Forgetpass");
                                  },
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
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
