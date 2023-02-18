// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CSSDA_page extends StatefulWidget {
  @override
  _CSSDA_pageState createState() => _CSSDA_pageState();
}

class _CSSDA_pageState extends State<CSSDA_page> {
  final List _cards1 = [
    buildCard(
        'Work surfaces are cleaned \n properly before starting work', '10'),
    buildCard('Walls are stained', '8'),
    buildCard(
        'Floors below & behind the counter \n and display rack are dirty', '6'),
    buildCard('Floor is wet and dirty', '4'),
    buildCard('Area is dirty and not organized', '2'),
  ];
  final List _cards2 = [
    buildCard(
        'Cleaning product like liquid \n detergent (food grade) is available',
        '10'),
    buildCard('Some cleaning products are not available', '8'),
    buildCard('Cleaning products are \n not food grade', '6'),
    buildCard('Cleaning products are stored \n near meat products', '4'),
    buildCard('No cleaning material available', '2'),
  ];
  final List _cards3 = [
    buildCard(
        'Cleaning materials like mop, rags, squeegies/wiper are available',
        '10'),
    buildCard('Some cleaning materials are not available', '8'),
    buildCard('Cleaning materials are not in \n proper stage', '6'),
    buildCard('Some cleaning materials are \n damaged', '4'),
    buildCard('No cleaning material available', '2'),
  ];
  final List _cards4 = [
    buildCard(
        'Store rooms are cleaned every \n two weeks or earlier as necessary',
        '10'),
    buildCard('Store rooms are sometimes maintained', '8'),
    buildCard('Store rooms are seldom \n maintained', '6'),
    buildCard('Store rooms have foul odor', '4'),
    buildCard(
        'Store rooms are dirty and with the presence of pests and rodents',
        '2'),
  ];
  final List _cards5 = [
    buildCard(
        'Mop is odorless, sanitized before \n using and air dried after', '10'),
    buildCard('Mop is soaked in dirty water', '8'),
    buildCard('Mop is damaged', '6'),
    buildCard('Mop is not available', '4'),
    buildCard('Mop has foul odor, dirty, full \n of grease', '2'),
  ];
  final List _cards6 = [
    buildCard('Waste bins are leak proof and kept clean', '10'),
    buildCard('Waste bins are too small', '8'),
    buildCard('Waste bins are dirty', '6'),
    buildCard('Waste bins are broken', '4'),
    buildCard('Waste bins are not available', '2'),
  ];
  final List _cards7 = [
    buildCard(
        'Storage area is clean and free of \n debris, empty boxes or other refuse',
        '10'),
    buildCard('Empty boxes are scattered in the storage area', '8'),
    buildCard('Empty boxes are placed in aisles', '6'),
    buildCard(
        'Storage area is not dry and not well ventilated and well lighted',
        '4'),
    buildCard('Storage area are dirty and full of \n empty boxes', '2'),
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
                    )
                  ]),
                  Container(
                      alignment: Alignment.topCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 7,
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
              padding: EdgeInsets.only(top: 30, left: 5),
              child: Text(
                'Cleaning Supply Storage\nand Display Area',
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
        onPressed: () => context.go("/CS"),
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
