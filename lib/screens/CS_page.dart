// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CS_page extends StatefulWidget {
  @override
  _CS_pageState createState() => _CS_pageState();
}

class _CS_pageState extends State<CS_page> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        body: Column(children: [
          Container(
            child: buildCont9(),
          ),
          Container(
            padding: EdgeInsets.only(top: 35),
            alignment: Alignment.topCenter,
            child: buildCard165(),
          )
        ]),
      ));
}

Widget buildBckbtn7() => Container(
        child: InkWell(
      onTap: () {},
      child: Ink.image(
        image: AssetImage("assets/images/back_button.png"),
        height: 50,
        width: 50,
      ),
    ));

Widget buildCont9() => Container(
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 60, left: 25),
      decoration: BoxDecoration(
          color: Color.fromRGBO(70, 48, 48, 1.0),
          borderRadius: BorderRadius.circular(1),
          boxShadow: [BoxShadow(blurRadius: 1.0)]),
      child: Stack(
        children: [
          Container(
              child: Text(
            'Customer Service',
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

Widget buildCard136() => Container(
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
              'There are enough personnel to \n assist customers',
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

Widget buildCard137() => Container(
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
              'Not enough staff to take orders of customers',
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

Widget buildCard138() => Container(
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
              'There are few personnel focus to \n assist customers',
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

Widget buildCard139() => Container(
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
              'There are enough personnel but ignores customers',
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

Widget buildCard140() => Container(
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
              'No available staff to assist \n customers',
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

Widget buildCard141() => Container(
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
              'Greets customers with a smile',
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

Widget buildCard142() => Container(
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
              "Smiles but don't greet",
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

Widget buildCard143() => Container(
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
              "Greets but don't smile",
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

Widget buildCard144() => Container(
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
              'Smile is sly/not genuine',
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

Widget buildCard145() => Container(
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
              "Don't greet and smile",
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

Widget buildCard146() => Container(
    height: 165,
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
              'Taking orders and suggesting \n products are prompt, pleasant and clear',
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

Widget buildCard147() => Container(
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
              'Takes order properly but not \n suggested additional products',
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

Widget buildCard148() => Container(
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
              'Seldom suggest products to \n customers',
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

Widget buildCard149() => Container(
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
              "Does not repeat customer's \n order to verify",
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

Widget buildCard150() => Container(
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
              'Never suggests promo items / \n other products',
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

Widget buildCard151() => Container(
    height: 165,
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
              'Preparation and assembling of \n orders are organize, accurate \n and fast',
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

Widget buildCard152() => Container(
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
              'Products are not assembled \n properly',
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

Widget buildCard153() => Container(
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
              'Products are accurately organized \n but served slow',
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

Widget buildCard154() => Container(
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
              'Products are inaccurately \n organized even served fast',
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

Widget buildCard155() => Container(
    height: 165,
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
              'Products are not assembled \n properly, inaccurate and served \n slow',
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

Widget buildCard156() => Container(
    height: 165,
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
              'Serve the meat order completely, courteously and helpfully with \n proper posture',
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

Widget buildCard157() => Container(
    height: 165,
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
              'Staff is courteous and helpful \n with proper posture but orders \n were not completely served',
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

Widget buildCard158() => Container(
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
              'Staff is courteous and helpful but \n with improper posture',
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

Widget buildCard159() => Container(
    height: 165,
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
              'Staff is courteous and helpful but \n with improper posture and orders \n are not completely served',
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

Widget buildCard160() => Container(
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
              'Staff shows disrespect and \n not helpful',
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

Widget buildCard161() => Container(
    height: 165,
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
              'Thank/ask for repeat order \n naturally, sincerely and with \n eye contact',
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

Widget buildCard162() => Container(
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
              'Thank the customer but without \n eye contact',
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

Widget buildCard163() => Container(
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
              'Serves without smiling',
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

Widget buildCard164() => Container(
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
              'Thank the customer but not \n completely focused',
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

Widget buildCard165() => Container(
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
              'Do not thank customer and \n focuses on unimportant activity',
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
