// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:second_app/forgetpassword.dart';
import 'package:second_app/homepage.dart';
import 'package:second_app/login.dart';
import 'package:second_app/signup.dart';

void main() {
  runApp(MyApp());
}

GlobalKey<FormState> form = GlobalKey<FormState>();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => SignUp(),
        "homepage": (context) => HomePage(),
        "forgetpassword": (context) => ForgetPassword(),
      },
    );
  }
}
