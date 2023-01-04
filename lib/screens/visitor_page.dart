// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class visitor_page extends StatefulWidget {
  @override
  _visitor_pageState createState() => _visitor_pageState();
}

class _visitor_pageState extends State<visitor_page> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
              body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 5),
            alignment: AlignmentDirectional.topStart,
            child: buildSignOut(),
          ),
          Container(
            padding: EdgeInsets.only(top: 125),
            alignment: AlignmentDirectional.topCenter,
            child: buildCharacter(),
          ),
          Container(
            padding: EdgeInsets.only(top: 461),
            child: buildCont1(),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 70),
              alignment: AlignmentDirectional.bottomCenter,
              child: buildStartBtn())
        ],
      )));
}

Widget buildSignOut() => Container(
    width: 85,
    height: 30,
    child: TextButton(
      onPressed: () {},
      child: Text(
        'Sign Out',
        style: TextStyle(color: Colors.grey),
      ),
    ));

Widget buildCharacter() => Container(
      child: Image.asset(
        "assets/images/Character.png",
        scale: 0.8,
      ),
    );

Widget buildCont1() => Column(children: [
      Container(
        width: double.infinity,
        height: 270,
        color: Color.fromRGBO(70, 48, 48, 1.0),
        padding: EdgeInsets.only(top: 40, left: 25),
        child: Text(
          'Rate and give remarks to our Butcher!',
          style: GoogleFonts.hahmlet(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    ]);

Widget buildStartBtn() => Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFAA2121),
            minimumSize: Size(320, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {},
        child: Text(
          'Start',
        ),
      ),
    );
