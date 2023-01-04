// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SAPOM_Page extends StatefulWidget {
  @override
  _SAPOM_PageState createState() => _SAPOM_PageState();
}

class _SAPOM_PageState extends State<SAPOM_Page> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
              body: Column(
        children: [
          Container(
            child: buildCont7(),
          ),
          Container(
            padding: EdgeInsets.only(top: 35),
            alignment: Alignment.topCenter,
            child: buildCard100(),
          )
        ],
      )));
}

Widget buildBckbtn5() => Container(
        child: InkWell(
      onTap: () {},
      child: Ink.image(
        image: AssetImage("assets/images/back_button.png"),
        height: 50,
        width: 50,
      ),
    ));

Widget buildCont7() => Container(
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 60, left: 25),
      decoration: BoxDecoration(
          color: Color.fromRGBO(70, 48, 48, 1.0),
          borderRadius: BorderRadius.circular(1),
          boxShadow: [BoxShadow(blurRadius: 9.0)]),
      child: Stack(
        children: [
          Container(
              child: Text(
            'Storing and Packaging Meats',
            style: GoogleFonts.hahmlet(
              fontSize: 25,
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

Widget buildCard61() => Container(
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
              'Temperature of cold room reads negative eighteen (-18°C)',
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

Widget buildCard62() => Container(
    height: 167,
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
              'Temperature of cold room reads \n above negative eighteen \n celsius (-17°C to -12°C)',
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

Widget buildCard63() => Container(
    height: 143,
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
              'Temperature of cold room is fluctuating',
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

Widget buildCard64() => Container(
    height: 120,
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
              'Cold room thaws out frequently',
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

Widget buildCard65() => Container(
    height: 142,
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
              'Cold room is broken and \n shutdown',
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

Widget buildCard66() => Container(
    height: 142,
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
              'Temperature of chiller is zero \n to four degrees celsius',
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

Widget buildCard67() => Container(
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
              'Temperature of chiller reads \n above four degrees celsius \n (+5°C to +8°C)',
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

Widget buildCard68() => Container(
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
              'Temperature of chiller is \n fluctuating',
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

Widget buildCard69() => Container(
    height: 142,
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
              'Chiller is not accurate with the \n set temperature',
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

Widget buildCard70() => Container(
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
              'Chiller is broken and shutdown',
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

Widget buildCard71() => Container(
    height: 141,
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
              'Meats are free from Off odour/ discoloration/ slimy surface',
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

Widget buildCard72() => Container(
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
              'Some meat packages/boxes are damaged',
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

Widget buildCard73() => Container(
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
              'Meat packages/boxes are not \n arranged properly',
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

Widget buildCard74() => Container(
    height: 143,
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
              'Meats are with Off odour/ discoloration/ slimy surface',
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

Widget buildCard75() => Container(
    height: 142,
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
              'Fresh and contaminated meats \n are mixed',
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

Widget buildCard76() => Container(
    height: 142,
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
              'Cold storage room/refrigerator is \n not overload (60% of capacity)',
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

Widget buildCard77() => Container(
    height: 123,
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
              'Meats are properly segregated',
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

Widget buildCard78() => Container(
    height: 142,
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
              'Meats are stacked higher than recommended height',
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

Widget buildCard79() => Container(
    height: 142,
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
              'Meat packages/boxes are not \n arranged properly',
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

Widget buildCard80() => Container(
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
              'Overloaded cold storage',
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

Widget buildCard81() => Container(
    height: 142,
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
              'All products are labeled with \n name and date (expiry/delivery)',
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

Widget buildCard82() => Container(
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
              'Some products are not labeled \n with name',
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

Widget buildCard83() => Container(
    height: 142,
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
              'Some products are not labeled \n with date (expiry/delivery)',
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

Widget buildCard84() => Container(
    height: 142,
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
              'Some products were not \n accurately labeled',
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

Widget buildCard85() => Container(
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
              'All products do not have \n any labels',
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

Widget buildCard86() => Container(
    height: 142,
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
              'Frozen products are thawed in refrigerator before display',
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

Widget buildCard87() => Container(
    height: 142,
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
              'Vacuumed frozen products are \n forcely thawed',
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

Widget buildCard88() => Container(
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
              'Some frozen products are frozen',
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

Widget buildCard89() => Container(
    height: 142,
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
              'Frozen products are thawed in \n room temperature',
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

Widget buildCard90() => Container(
    height: 142,
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
              'Frozen products are thawed \n directly in water',
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

Widget buildCard91() => Container(
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
              'Packaging and pack seals are \n intact, without holes, leakage, \n dents, and vacuum pack intact',
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

Widget buildCard92() => Container(
    height: 142,
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
              'Some packaging and pack seals \n are not intact',
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

Widget buildCard93() => Container(
    height: 142,
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
              'Some packaging and pack seals \n are not intact and with holes',
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

Widget buildCard94() => Container(
    height: 191,
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
              'Some packaging and pack seals \n are not intact, with holes, leakage, dents and vacuumed products are loosely packed',
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

Widget buildCard95() => Container(
    height: 141,
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
              'Ice is present inside the products \n that are loosely packed',
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

Widget buildCard96() => Container(
    height: 141,
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
              'Meat products are under "best \n before" / expiry or use by date',
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

Widget buildCard97() => Container(
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
              'Some products are near to expire',
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

Widget buildCard98() => Container(
    height: 142,
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
              'Some of the products are not \n labeled with expiration dates',
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

Widget buildCard99() => Container(
    height: 142,
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
              'Most of the products are not \n labeled with expiration dates',
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

Widget buildCard100() => Container(
    height: 118,
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
              'Some meat products are expired',
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


