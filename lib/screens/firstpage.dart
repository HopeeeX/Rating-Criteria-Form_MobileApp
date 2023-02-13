// ignore_for_file: prefer_const_constructors

import 'dart:js';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
              body: Center(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 200)),
          Container(child: buildLogo()),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: buildAppName(),
          ),
          Padding(padding: EdgeInsets.only(top: 22)),
          Container(
            child: buildClickBtn(context),
          )
        ]),
      )));
}

Widget buildLogo() => Container(
      height: 60,
      width: 200,
      child: Image.asset("assets/images/logo.png"),
    );

Widget buildAppName() => Container(
      width: 350,
      child: Text(
        'OUTLET VISIT CHECKLIST',
        style:
            TextStyle(fontFamily: 'Coolvetica', fontSize: 80, letterSpacing: 3),
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );

Widget buildClickBtn(BuildContext context) => Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFAA2121),
            minimumSize: Size(170, 48),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => context.go("/visitor"),
        child: Text(
          'Click Here',
          style: GoogleFonts.hahmlet(fontSize: 18),
        ),
      ),
    );
