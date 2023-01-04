// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MROV_page extends StatefulWidget {
  @override
  _MROV_pageState createState() => _MROV_pageState();
}

class _MROV_pageState extends State<MROV_page> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        body: Column(children: [
          Container(
            child: buildCont10(),
          ),
          Container(
            padding: EdgeInsets.only(top: 35),
            alignment: Alignment.topCenter,
            child: buildCard185(),
          )
        ]),
      ));
}

Widget buildBckbtn8() => Container(
        child: InkWell(
      onTap: () {},
      child: Ink.image(
        image: AssetImage("assets/images/back_button.png"),
        height: 50,
        width: 50,
      ),
    ));

Widget buildCont10() => Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          color: Color.fromRGBO(70, 48, 48, 1.0),
          borderRadius: BorderRadius.circular(1),
          boxShadow: [BoxShadow(blurRadius: 1.0)]),
      child: Stack(
        children: [
          Container(
              padding: EdgeInsets.only(top: 60, left: 25),
              child: Text(
                'Monitoring Retail Outlet Variance',
                style: GoogleFonts.hahmlet(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 135, left: 25),
            child: Text('Choose your desired parameters',
                style: GoogleFonts.hahmlet(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.white)),
          )
        ],
      ),
    );

Widget buildCard166() => Container(
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
              'Delivery Receipts (DR) are \n properly documented',
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

Widget buildCard167() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'DRs are documented but \n incomplete',
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
                elevation: 5),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard168() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'DRs are incomplete and \n unreadable',
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
                elevation: 5),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard169() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'DRs are scattered elsewhere',
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
                elevation: 5),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard170() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'DRs are not kept for \n documentation',
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
                elevation: 5),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard171() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Ingredients and packaging supplies \n are enough for the daily operation',
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
                elevation: 5),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard172() => Container(
    height: 165,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Ingredients and packaging supplies \n are not enough for the daily \n operation',
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
                elevation: 5),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard173() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Some ingredients are not used and nearly expire',
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
                elevation: 5),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard174() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Plastic packagings are used \n improperly (personal use)',
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
                elevation: 5),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard175() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Ingredients and packaging \n supplies are unavailable',
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
                elevation: 5),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard176() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Meat stocks and buffer items are \n in the right volume',
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
                elevation: 5),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard177() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Items for buffer are exceeded the preferred count at 20%',
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
                elevation: 5),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard178() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Items for buffer are exceeded the preferred count at 50% ',
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
                elevation: 5),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard179() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Items for buffer are exceeded the preferred count at 80%',
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
                elevation: 5),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard180() => Container(
    height: 117,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Overcrowded meat stocks',
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
                elevation: 5),
            child: Text(
              '2',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard181() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Fast moving products are always available',
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
                elevation: 5),
            child: Text(
              '10',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard182() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Fast moving products are available \n but not enough until next delivery',
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
                elevation: 5),
            child: Text(
              '8',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard183() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Fast moving products are nearly \n out of stock',
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
                elevation: 5),
            child: Text(
              '6',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard184() => Container(
    height: 140,
    width: 337,
    child: Card(
      color: Color.fromRGBO(236, 228, 228, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            child: Text(
              'Fast moving products only available \n for the day',
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
                elevation: 5),
            child: Text(
              '4',
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          )
        ],
      ),
    ));

Widget buildCard185() => Container(
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
              'No available fast moving products',
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
