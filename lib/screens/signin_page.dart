// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class signin_page extends StatefulWidget {
  @override
  _signin_pageState createState() => _signin_pageState();
}

class _signin_pageState extends State<signin_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.only(top: 200)),
            Container(
                height: 68,
                width: 68,
                child: Image.asset("assets/images/person_circle.png")),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 35,
              width: 140,
              child: Text(
                'Sign in as...',
                style: TextStyle(
                    fontFamily: 'Coolvetica', fontSize: 24, letterSpacing: 2),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              width: 150,
              height: 45,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFAA2121)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signin_page()));
                },
                child: Text("Visitor"),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
