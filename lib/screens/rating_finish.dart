// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class rating_finish extends StatefulWidget {
  @override
  _rating_finishState createState() => _rating_finishState();
}

class _rating_finishState extends State<rating_finish> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 85),
                alignment: Alignment.topCenter,
                child: Lottie.asset('animations/check_mark.json',
                    width: 230, height: 230, fit: BoxFit.cover, repeat: false)),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: buildTxt(),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: buildContinueBtn(context),
            )
          ],
        ),
      ));
}

Widget buildTxt() => Container(
      child: Text(
          "Great! You've finished your \nratings, click continue to generate \nyour form.",
          maxLines: 3,
          textAlign: TextAlign.center,
          style: GoogleFonts.hahmlet(fontSize: 17)),
    );

Widget buildContinueBtn(BuildContext context) => Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFAA2121),
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => context.go("/generate"),
        child: Text('Continue', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
