// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DOMP_page extends StatefulWidget {
  @override
  _DOMP_pageState createState() => _DOMP_pageState();
}

class _DOMP_pageState extends State<DOMP_page> {
  final List _cards1 = [
    buildCard('Fresh appearance of meats', '10'),
    buildCard('Some meats are discoloured', '8'),
    buildCard('Inspects are visible in the display', '6'),
    buildCard('Most meats displayed are frozen', '4'),
    buildCard('Contaminated and discoloured \n meats are displayed', '2'),
  ];
  final List _cards2 = [
    buildCard('Planogram are followed and no overcrowding', '10'),
    buildCard('Some meat displayed are \n incomplete', '8'),
    buildCard(
        'Some meats displayed are not in proper position based on the planogram',
        '6'),
    buildCard('Meats displayed are incomplete', '4'),
    buildCard('Planogram are not followed and overcrowded display', '2'),
  ];
  final List _cards3 = [
    buildCard(
        'Meat display cabinets are wiped with clean cloth and all lights must be operational',
        '10'),
    buildCard(
        'Meat display cabinets are clean \n but some lights are not \n operational',
        '8'),
    buildCard(
        'Meat display cabinets are dirty \n but all lights are operational',
        '6'),
    buildCard('Cabinets are dirty and all lights \n are not operational', '4'),
    buildCard(
        'Cabinets are rusty, dirty and all lights are not operational', '2'),
  ];
  final List _cards4 = [
    buildCard(
        'Signages and price tags are accurately displayed and visible', '10'),
    buildCard('Some signages are not accurately placed', '8'),
    buildCard('Some prices are not updated', '6'),
    buildCard('Most signages are faded and dirty', '4'),
    buildCard(
        'Most signages are not properly placed and prices are not updated',
        '2'),
  ];
  final List _cards5 = [
    buildCard('Value-Added products are well-covered', '10'),
    buildCard('Some Value-Added products are uncovered', '8'),
    buildCard('Some Value-Added products are not available', '6'),
    buildCard('Value-Added products are uncovered', '4'),
    buildCard(
        'Value-Added products are incomplete, discoloured and slimyt', '2'),
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
          )));
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
            onTap: () => context.go("/TE"),
            child: Container(
              child: Image.asset("assets/images/back_button.png"),
            ),
          )),
          Container(
              padding: EdgeInsets.only(top: 50, left: 5),
              child: Text(
                'Display of Meat Product',
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
        onPressed: () => context.go("/SAPOM"),
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
