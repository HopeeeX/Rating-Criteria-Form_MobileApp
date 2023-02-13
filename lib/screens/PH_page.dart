// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PH_page extends StatefulWidget {
  @override
  _PH_pageState createState() => _PH_pageState();
}

class _PH_pageState extends State<PH_page> {
  final List _cards1 = [
    buildCard(
        'Wear clean uniform, Apron, Face mask/Spit Guard, gloves, hairnet, visor cap, lab gown and boots or any PPE required by the retail outlet',
        '10'),
    buildCard('1 deviation in grooming and PPE', '8'),
    buildCard(
        '2-3 deviations in grooming and \n PPE (i.e., no spit guard, no \n hairnet)',
        '6'),
    buildCard('Wear dirty PPE', '4'),
    buildCard('Incomplete and dirty PPE', '2'),
  ];

  final List _cards2 = [
    buildCard(
        'Clean haircut, no hair dye, no beard tattoo, moustache and not wearing jewelries',
        '10'),
    buildCard('Long Hair', '8'),
    buildCard('With moustache, with beard', '6'),
    buildCard('With hair dye', '4'),
    buildCard(
        'Long hair with hair dye color, with moustache & beard and wear jewelries',
        '2'),
  ];
  final List _cards3 = [
    buildCard('Fingernails are trimmed, clean \n and unpolished', '10'),
    buildCard('Fingernails are not trimmed but unpolished', '8'),
    buildCard('Fingernails are dirty', '6'),
    buildCard('Fingernails are long and with \n polish', '4'),
    buildCard('Fingernails are dirty, not trimmed \n and polished', '2')
  ];
  final List _cards4 = [
    buildCard(
        'Personnel serving meat washes hands often and uses tong/ladle, etc. for serving if necessary',
        '10'),
    buildCard(
        'Sometimes washes hands but uses tong/ladle, etc. for serving if necessary',
        '8'),
    buildCard(
        'Sometimes washes hands and do not use tong/ladle, etc. for serving if necessary',
        '6'),
    buildCard(
        'Never washes hands but using tong/ladle, etc. for serving if necessary',
        '4'),
    buildCard('Never washes hands and do not \n use tools for serving', '2')
  ];

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromRGBO(121, 112, 112, 1.0),
            body: Column(
              children: [
                Container(
                  child: buildCont(context),
                ),
                Expanded(
                  child: Container(
                    width: 350,
                    height: double.infinity,
                    child: ListView.builder(
                      itemCount: _cards1.length,
                      itemBuilder: (context, index) {
                        return _cards1[index];
                      },
                    ),
                  ),
                ),
                Container(
                  height: 115,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Text('Select Rate to Proceed',
                            style: GoogleFonts.hahmlet(
                                color: Colors.white, fontSize: 15)),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 12),
                        child: buildNxtBtn(context),
                      )
                    ],
                  ),
                )
              ],
            )),
      );
}

Widget buildCont(BuildContext context) => Container(
      width: double.infinity,
      height: 180,
      padding: EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
          color: Color.fromRGBO(121, 112, 112, 1.0),
          borderRadius: BorderRadius.circular(1)),
      child: Stack(
        children: [
          Container(
              child: InkWell(
            onTap: () => context.go("/fillout"),
            child: Container(
              child: Image.asset("assets/images/back_button.png"),
            ),
          )),
          Container(
              padding: EdgeInsets.only(top: 50, left: 5),
              child: Text(
                'Personal Hygiene',
                style: GoogleFonts.hahmlet(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 90, left: 5),
            child: Text('Choose your desired parameters',
                style: GoogleFonts.hahmlet(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.white)),
          )
        ],
      ),
    );

Widget buildCard(String text, String value) => Container(
        child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
            top: 15,
          )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFAF6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 4),
            child: Text(
              value,
              style: TextStyle(color: Color(0xFF988686)),
            ),
            onPressed: () {},
          ),
          Padding(padding: EdgeInsets.only(bottom: 15))
        ],
      ),
    ));

Widget buildRemarks() => Container(
    padding: EdgeInsets.only(top: 20),
    alignment: Alignment.topCenter,
    child: SizedBox(
      width: 337,
      height: 50.5,
      child: TextField(
          decoration: InputDecoration(
              fillColor: Color.fromRGBO(236, 228, 228, 1.0),
              contentPadding: EdgeInsets.only(left: 20),
              hintText: "Enter your remarks here",
              hintStyle: GoogleFonts.hahmlet(fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ))),
    ));

Widget buildNxtBtn(BuildContext context) => Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFAA2121),
            minimumSize: Size(355, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => context.go("/TE"),
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
