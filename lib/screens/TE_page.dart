// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TE_Page extends StatefulWidget {
  @override
  _TE_PageState createState() => _TE_PageState();
}

class _TE_PageState extends State<TE_Page> {
  final List _cards1 = [
    buildCard(
        'Knives, sharpening stone, cleaver and other tools are cleaned and sanitized before the commencement of the day selling',
        '10'),
    buildCard('Tools are clean but not in proper location', '8'),
    buildCard('Tools are clean but are \n broken/dent', '6'),
    buildCard('Tools are dirty', '4'),
    buildCard('Tools are incomplete, broken \n and dirty', '2'),
  ];
  final List _cards2 = [
    buildCard(
        'Equipment/Machineries are in good condition, safe, clean and sanitized before the commencement of the day retailing/selling',
        '10'),
    buildCard(
        'Some equipment/machineries \n are not in good condition but are clean',
        '8'),
    buildCard(
        'Most equipment/machineries \n are not in good condition and are dirty',
        '6'),
    buildCard(
        'All equipment/machineries are \n in good condition but dirty', '4'),
    buildCard(
        'All equipment/machineries are broken and unsanitized & dirty', '2'),
  ];
  final List _cards3 = [
    buildCard(
        'All tools and equipment are \n washed with cleaning agent/detergent (food grade) and rinsed with clean warm water after \n every use',
        '10'),
    buildCard(
        'All tools and equipment are \n washed with detergent (food grade) but not rinsed with clean warm water after every use',
        '8'),
    buildCard(
        'All tools and equipment are not washed immediately every after use',
        '6'),
    buildCard('Detergent use for washing is not food grade', '4'),
    buildCard('All tools and equipment are unsanitized & dirty', '2'),
  ];

  @override
  Widget build(BuildContext context) => SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(121, 112, 112, 1.0),
          body: Column(
            children: [
              Container(
                child: buildCont5(context),
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
                      child: buildNxtBtn3(context),
                    )
                  ],
                ),
              )
            ],
          )));
}

Widget buildCont5(BuildContext context) => Container(
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
            onTap: () => context.go("/PH"),
            child: Container(
              child: Image.asset("assets/images/back_button.png"),
            ),
          )),
          Container(
              padding: EdgeInsets.only(top: 50, left: 5),
              child: Text(
                'Tools and Equipment',
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

Widget buildNxtBtn3(BuildContext context) => Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFAA2121),
            minimumSize: Size(355, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => context.go("/DOMP"),
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
