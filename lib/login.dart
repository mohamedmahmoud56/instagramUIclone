// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Color.fromARGB(255, 4, 10, 54),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(80),
                height: 75,
                width: 75,
                child: Opacity(
                  opacity: 1,
                  child: Image.asset("images/instagram.png"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: Color.fromARGB(255, 190, 232, 252),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      enabled: true,
                      decoration: InputDecoration(
                        labelText: 'Username, email or mobile number',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 133, 152, 161),
                          fontWeight: FontWeight.w900,
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        filled: true,
                        fillColor: Color.fromARGB(255, 16, 63, 87),
                        hintText: 'Username, email or mobile number',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 133, 152, 161),
                          fontWeight: FontWeight.w900,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 190, 232, 252),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 133, 152, 161),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 0,
                      indent: 10,
                      endIndent: 10,
                      height: 10,
                    ),
                    TextFormField(
                      cursorColor: Color.fromARGB(255, 190, 232, 252),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      obscureText: true,
                      obscuringCharacter: '•',
                      enabled: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Color.fromARGB(255, 133, 152, 161),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 133, 152, 161),
                          fontWeight: FontWeight.w900,
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        filled: true,
                        fillColor: Color.fromARGB(255, 16, 63, 87),
                        hintText: 'Password',
                        alignLabelWithHint: false,
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 133, 152, 161),
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 190, 232, 252),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 133, 152, 161),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 8, 49, 255),
                      ),
                      padding: EdgeInsets.all(2),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('homepage');
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          )),
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('forgetpassword');
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 120),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Color.fromARGB(255, 8, 49, 255),
                          )),
                      padding: EdgeInsets.all(2),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('signup');
                          },
                          child: Text(
                            'Create new account',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    Container(
                      height: 70,
                      width: 120,
                      margin: EdgeInsets.only(top: 10),
                      child: Image.asset("images/meta.png"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
