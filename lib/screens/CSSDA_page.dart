// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CSSDA_page extends StatefulWidget {
  @override
  _CSSDA_pageState createState() => _CSSDA_pageState();
}

class _CSSDA_pageState extends State<CSSDA_page> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        body: Column(children: [
          Container(
            child: buildCont8(),
          ),
          Container(
            padding: EdgeInsets.only(top: 35),
            alignment: Alignment.topCenter,
            child: buildCard135(),
          )
        ]),
      ));
}

Widget buildBckbtn6() => Container(
        child: InkWell(
      onTap: () {},
      child: Ink.image(
        image: AssetImage("assets/images/back_button.png"),
        height: 50,
        width: 50,
      ),
    ));

Widget buildCont8() => Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          color: Color.fromRGBO(70, 48, 48, 1.0),
          borderRadius: BorderRadius.circular(1),
          boxShadow: [BoxShadow(blurRadius: 1.0)]),
      child: Stack(
        children: [
          Container(
              padding: EdgeInsets.only(top: 65, left: 23),
              child: Text(
                'Cleaning Supply Storage and Display Area',
                style: GoogleFonts.hahmlet(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 135, left: 22),
            child: Text('Choose your desired parameters',
                style: GoogleFonts.hahmlet(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.white)),
          )
        ],
      ),
    );

Widget buildCard101() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Work surfaces are cleaned \n properly before starting work',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard102() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Walls are stained',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard103() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Floors below & behind the counter \n and display rack are dirty',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard104() => Container(
    height: 118,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Floor is wet and dirty',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard105() => Container(
    height: 118,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Area is dirty and not organized',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard106() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Cleaning product like liquid \n detergent (food grade) is available',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard107() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Some cleaning products are not available',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard108() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Cleaning products are \n not food grade',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard109() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Cleaning products are stored \n near meat products',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard110() => Container(
    height: 120,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'No cleaning material available',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard111() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Cleaning materials like mop, rags, squeegies/wiper are available',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard112() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Some cleaning materials are not available',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard113() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Cleaning materials are not in \n proper stage',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard114() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Some cleaning materials are \n damaged',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard115() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'No cleaning material available',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard116() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Store rooms are cleaned every \n two weeks or earlier as necessary',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard117() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Store rooms are sometimes maintained',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard118() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Store rooms are seldom \n maintained',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard119() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Store rooms have foul odor',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard120() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Store rooms are dirty and with the presence of pests and rodents',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard121() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Mop is odorless, sanitized before \n using and air dried after',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard122() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Mop is soaked in dirty water',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard123() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Mop is damaged',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard124() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Mop is not available',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard125() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Mop has foul odor, dirty, full \n of grease',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard126() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Waste bins are leak proof and kept clean',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard127() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Waste bins are too small',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard128() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Waste bins are dirty',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard129() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Waste bins are broken',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard130() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Waste bins are not available',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard131() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Storage area is clean and free of \n debris, empty boxes or other refuse',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard132() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Empty boxes are scattered in the storage area',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard133() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Empty boxes are placed in aisles',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard134() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Storage area is not dry and not well ventilated and well lighted',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard135() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Storage area are dirty and full of \n empty boxes',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));
