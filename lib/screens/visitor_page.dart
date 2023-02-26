// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
            child: buildSignOut(context),
          ),
          Container(
            padding: EdgeInsets.only(top: 167),
            alignment: AlignmentDirectional.topCenter,
            child: buildCharacter(),
          ),
          Container(
            padding: EdgeInsets.only(top: 500),
            child: buildCont(context),
          ),
        ],
      )));
}

Widget buildSignOut(BuildContext context) => Container(
    width: 85,
    height: 30,
    child: TextButton(
      onPressed: () => context.go("/"),
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

Widget buildCont(BuildContext context) => Container(
      width: double.infinity,
      height: double.infinity,
      child: Card(
        color: Color.fromRGBO(121, 112, 112, 1.0),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 18)),
            Container(
              padding: EdgeInsets.only(top: 30, left: 15),
              child: Text(
                'Rate and Give Remarks to our Butcher',
                style: GoogleFonts.hahmlet(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              top: 25,
            )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFAA2121),
                  minimumSize: Size(320, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () => context.go("/fillout"),
            ),
          ],
        ),
      ),
    );
