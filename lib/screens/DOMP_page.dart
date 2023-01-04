// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DOMP_page extends StatefulWidget {
  @override
  _DOMP_pageState createState() => _DOMP_pageState();
}

class _DOMP_pageState extends State<DOMP_page> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        body: Column(
          children: [
            Container(
              child: buildCont6(),
            ),
            Container(
              padding: EdgeInsets.only(top: 35),
              alignment: Alignment.topCenter,
              child: buildCard60(),
            )
          ],
        ),
      ));
}

Widget buildBckbtn4() => Container(
        child: InkWell(
      onTap: () {},
      child: Ink.image(
        image: AssetImage("assets/images/back_button.png"),
        height: 50,
        width: 50,
      ),
    ));

Widget buildCont6() => Container(
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 70, left: 30),
      decoration: BoxDecoration(
          color: Color.fromRGBO(70, 48, 48, 1.0),
          borderRadius: BorderRadius.circular(1),
          boxShadow: [BoxShadow(blurRadius: 1.0)]),
      child: Stack(
        children: [
          Container(
              child: Text(
            'Display of Meat Product',
            style: GoogleFonts.hahmlet(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          )),
          Container(
            padding: EdgeInsets.only(top: 45),
            child: Text('Choose your desired parameters',
                style: GoogleFonts.hahmlet(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.white)),
          )
        ],
      ),
    );

Widget buildCard36() => Container(
    height: 113,
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
              'Fresh appearance of meats',
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

Widget buildCard37() => Container(
    height: 113,
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
              'Some meats are discoloured',
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

Widget buildCard38() => Container(
    height: 113,
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
              'Inspects are visible in the display',
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

Widget buildCard39() => Container(
    height: 113,
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
              'Most meats displayed are frozen',
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

Widget buildCard40() => Container(
    height: 137,
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
              'Contaminated and discoloured \n meats are displayed',
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

Widget buildCard41() => Container(
    height: 137,
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
              'Planogram are followed and no overcrowding',
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

Widget buildCard42() => Container(
    height: 137,
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
              'Some meat displayed are \n incomplete',
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

Widget buildCard43() => Container(
    height: 160,
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
              'Some meats displayed are not in proper position based on the planogram',
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

Widget buildCard44() => Container(
    height: 110,
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
              'Meats displayed are incomplete',
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

Widget buildCard45() => Container(
    height: 135,
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
              'Planogram are not followed and overcrowded display',
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

Widget buildCard46() => Container(
    height: 160,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Meat display cabinets are wiped with clean cloth and all lights must be operational',
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

Widget buildCard47() => Container(
    height: 160,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Meat display cabinets are clean \n but some lights are not \n operational',
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

Widget buildCard48() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Meat display cabinets are dirty \n but all lights are operational',
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

Widget buildCard49() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Cabinets are dirty and all lights \n are not operational',
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

Widget buildCard50() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Cabinets are rusty, dirty and all lights are not operational',
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

Widget buildCard51() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Signages and price tags are accurately displayed and visible',
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

Widget buildCard52() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Some signages are not accurately placed',
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

Widget buildCard53() => Container(
    height: 115,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Some prices are not updated',
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

Widget buildCard54() => Container(
    height: 115,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Most signages are faded and dirty',
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

Widget buildCard55() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Most signages are not properly placed and prices are not updated',
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

Widget buildCard56() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Value-Added products are well-covered',
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

Widget buildCard57() => Container(
    height: 160,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Some Value-Added products are uncovered',
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

Widget buildCard58() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Some Value-Added products are not available',
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

Widget buildCard59() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Value-Added products are uncovered',
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

Widget buildCard60() => Container(
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Value-Added products are incomplete, discoloured and slimy',
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
