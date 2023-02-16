// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MROV_page extends StatefulWidget {
  @override
  _MROV_pageState createState() => _MROV_pageState();
}

class _MROV_pageState extends State<MROV_page> {
  final List _cards1 = [
    buildCard('Delivery Receipts (DR) are \n properly documented', '10'),
    buildCard('DRs are documented but \n incomplete', '8'),
    buildCard('DRs are incomplete and \n unreadable', '6'),
    buildCard('DRs are scattered elsewhere', '4'),
    buildCard('DRs are not kept for \n documentation', '2')
  ];
  final List _cards2 = [
    buildCard(
        'Ingredients and packaging supplies \n are enough for the daily operation',
        '10'),
    buildCard(
        'Ingredients and packaging supplies \n are not enough for the daily \n operation',
        '8'),
    buildCard('Some ingredients are not used and nearly expire', '6'),
    buildCard('Plastic packagings are used \n improperly (personal use)', '4'),
    buildCard('Ingredients and packaging \n supplies are unavailable', '2')
  ];
  final List _cards3 = [
    buildCard('Meat stocks and buffer items are \n in the right volume', '10'),
    buildCard('Items for buffer are exceeded the preferred count at 20%', '8'),
    buildCard('Items for buffer are exceeded the preferred count at 50%', '6'),
    buildCard('Items for buffer are exceeded the preferred count at 80%', '4'),
    buildCard('Overcrowded meat stocks', '2')
  ];
  final List _cards4 = [
    buildCard('Fast moving products are always available', '10'),
    buildCard(
        'Fast moving products are available \n but not enough until next delivery',
        '8'),
    buildCard('Fast moving products are nearly \n out of stock', '6'),
    buildCard('Fast moving products only available \n for the day', '4'),
    buildCard('No available fast moving products', '2')
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
                    )
                  ]),
                  Container(
                      alignment: Alignment.topCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 4,
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
            onTap: () => context.go("/CS"),
            child: Container(
              child: Image.asset("assets/images/back_button.png"),
            ),
          )),
          Container(
              padding: EdgeInsets.only(top: 30, left: 5),
              child: Text(
                'Monitoring Retail Outlet Variance',
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
        onPressed: () => context.go("/rating"),
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
