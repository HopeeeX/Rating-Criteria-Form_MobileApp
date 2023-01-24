// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
            child: buildClickBtn(),
          )
        ]),
      )));
}

Widget buildLogo() => Container(
      height: 50,
      width: 170,
      child: Image.asset("assets/images/logo.png"),
    );

Widget buildAppName() => Container(
      width: 300,
      child: Text(
        'OUTLET VISIT CHECKLIST',
        style:
            TextStyle(fontFamily: 'Coolvetica', fontSize: 40, letterSpacing: 3),
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );

Widget buildClickBtn() => Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFAA2121),
            minimumSize: Size(150, 45),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {},
        child: Text(
          'Click Here',
        ),
      ),
    );
