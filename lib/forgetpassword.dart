// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 10, 54),
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Color.fromARGB(255, 4, 10, 54),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              enabled: false,
              isThreeLine: true,
              title: Text(
                'Find your account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                "Enter your username, email, or mobile number.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    wordSpacing: 1),
              ),
            ),
            TextFormField(
              cursorColor: Color.fromARGB(255, 190, 232, 252),
              style: TextStyle(color: Colors.white, fontSize: 15),
              enabled: true,
              decoration: InputDecoration(
                labelText: 'Username, email, or mobile number',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 133, 152, 161),
                  fontWeight: FontWeight.w900,
                ),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                filled: true,
                fillColor: Color.fromARGB(255, 16, 63, 87),
                hintText: 'Username, email, or mobile number',
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
            Container(
              alignment: Alignment.center,
              height: 40,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 34, 156),
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Find account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
