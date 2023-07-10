// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            Text(
              "What's your name?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Divider(thickness: 0),
            TextFormField(
              cursorColor: Color.fromARGB(255, 190, 232, 252),
              style: TextStyle(color: Colors.white, fontSize: 15),
              enabled: true,
              decoration: InputDecoration(
                labelText: 'Full name',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 133, 152, 161),
                  fontWeight: FontWeight.w900,
                ),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                filled: true,
                fillColor: Color.fromARGB(255, 16, 63, 87),
                hintText: 'Full name',
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
              height: 100,
              thickness: 0,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(0, 8, 0, 3),
              enabled: false,
              isThreeLine: true,
              title: Text(
                'Create a password',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                "Create a password with at least 6 letters or numbers. It should be something others can't guess.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    wordSpacing: 1),
              ),
            ),
            Divider(thickness: 0),
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
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: InkWell(
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                onTap: () {
                  setState(() {
                    Navigator.popAndPushNamed(context, 'login');
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
