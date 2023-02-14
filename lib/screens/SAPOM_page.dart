// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SAPOM_Page extends StatefulWidget {
  @override
  _SAPOM_PageState createState() => _SAPOM_PageState();
}

class _SAPOM_PageState extends State<SAPOM_Page> {
  final List _cards1 = [
    buildCard('Temperature of cold room reads negative eighteen (-18°C)', '10'),
    buildCard(
        'Temperature of cold room reads \n above negative eighteen \n celsius (-17°C to -12°C)',
        '8'),
    buildCard('Temperature of cold room is fluctuating', '6'),
    buildCard('Cold room thaws out frequently', '4'),
    buildCard('Cold room is broken and \n shutdown', '2'),
  ];
  final List _cards2 = [
    buildCard(
        'Temperature of chiller is zero \n to four degrees celsius', '10'),
    buildCard(
        'Temperature of chiller reads \n above four degrees celsius \n (+5°C to +8°C)',
        '8'),
    buildCard('Temperature of chiller is \n fluctuating', '6'),
    buildCard('Chiller is not accurate with the \n set temperature', '4'),
    buildCard('Chiller is broken and shutdown', '2'),
  ];
  final List _cards3 = [
    buildCard(
        'Meats are free from Off odour/ discoloration/ slimy surface', '10'),
    buildCard('Some meat packages/boxes are damaged', '8'),
    buildCard('Meat packages/boxes are not \n arranged properly', '6'),
    buildCard('Meats are with Off odour/ discoloration/ slimy surface', '4'),
    buildCard('Fresh and contaminated meats \n are mixed', '2'),
  ];
  final List _cards4 = [
    buildCard(
        'Cold storage room/refrigerator is \n not overload (60% of capacity)',
        '10'),
    buildCard('Meats are properly segregated', '8'),
    buildCard('Meats are stacked higher than recommended height', '6'),
    buildCard('Meat packages/boxes are not \n arranged properly', '4'),
    buildCard('Overloaded cold storage', '2'),
  ];
  final List _cards5 = [
    buildCard(
        'All products are labeled with \n name and date (expiry/delivery)',
        '10'),
    buildCard('Some products are not labeled \n with name', '8'),
    buildCard(
        'Some products are not labeled \n with date (expiry/delivery)', '6'),
    buildCard('Some products were not \n accurately labeled', '4'),
    buildCard('All products do not have \n any labels', '2'),
  ];
  final List _cards6 = [
    buildCard(
        'Frozen products are thawed in refrigerator before display', '10'),
    buildCard('Vacuumed frozen products are \n forcely thawed', '8'),
    buildCard('Some frozen products are frozen', '6'),
    buildCard('Frozen products are thawed in \n room temperature', '4'),
    buildCard('Frozen products are thawed \n directly in water', '2'),
  ];
  final List _cards7 = [
    buildCard(
        'Packaging and pack seals are \n intact, without holes, leakage, \n dents, and vacuum pack intact',
        '10'),
    buildCard('Some packaging and pack seals \n are not intact', '8'),
    buildCard(
        'Some packaging and pack seals \n are not intact and with holes', '6'),
    buildCard(
        'Some packaging and pack seals \n are not intact, with holes, leakage, dents and vacuumed products are loosely packed',
        '4'),
    buildCard(
        'Ice is present inside the products \n that are loosely packed', '2'),
  ];
  final List _cards8 = [
    buildCard(
        'Meat products are under "best \n before" / expiry or use by date',
        '10'),
    buildCard('Some products are near to expire', '8'),
    buildCard(
        'Some of the products are not \n labeled with expiration dates', '6'),
    buildCard(
        'Most of the products are not \n labeled with expiration dates', '4'),
    buildCard('Some meat products are expired', '2'),
  ];

  PageController _controller = PageController();

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
                    child: Stack(children: [
                  PageView(controller: _controller, children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 17, left: 30, right: 30, bottom: 7),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: _cards1.length,
                          itemBuilder: (context, index) {
                            return _cards1[index];
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 17, left: 30, right: 30, bottom: 7),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: _cards2.length,
                          itemBuilder: (context, index) {
                            return _cards2[index];
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 17, left: 30, right: 30, bottom: 7),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: _cards3.length,
                          itemBuilder: (context, index) {
                            return _cards3[index];
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 17, left: 30, right: 30, bottom: 7),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: _cards4.length,
                          itemBuilder: (context, index) {
                            return _cards4[index];
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 17, left: 30, right: 30, bottom: 7),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: _cards5.length,
                          itemBuilder: (context, index) {
                            return _cards5[index];
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 17, left: 30, right: 30, bottom: 7),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: _cards6.length,
                          itemBuilder: (context, index) {
                            return _cards6[index];
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 17, left: 30, right: 30, bottom: 7),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: _cards7.length,
                          itemBuilder: (context, index) {
                            return _cards7[index];
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 17, left: 30, right: 30, bottom: 7),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: _cards8.length,
                          itemBuilder: (context, index) {
                            return _cards8[index];
                          }),
                    ),
                  ]),
                  Container(
                      alignment: Alignment.topCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 8,
                        effect: ExpandingDotsEffect(
                            spacing: 7.0,
                            radius: 5.0,
                            dotHeight: 10,
                            activeDotColor: Colors.grey),
                      )),
                ])),
                Container(
                  height: 85,
                  child: Column(
                    children: [
                      Container(
                        child: Text('Select Rate to Proceed',
                            style: GoogleFonts.hahmlet(
                                color: Colors.white, fontSize: 15)),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, bottom: 10),
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
      height: 170,
      padding: EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
          color: Color.fromRGBO(121, 112, 112, 1.0),
          borderRadius: BorderRadius.circular(1)),
      child: Stack(
        children: [
          Container(
              child: InkWell(
            onTap: () => context.go("/DOMP"),
            child: Container(
              child: Image.asset("assets/images/back_button.png"),
            ),
          )),
          Container(
              padding: EdgeInsets.only(top: 30, left: 5),
              child: Text(
                'Storing and Packaging of Meats',
                style: GoogleFonts.hahmlet(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 105, left: 5),
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
        onPressed: () => context.go("/CSSDA"),
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
