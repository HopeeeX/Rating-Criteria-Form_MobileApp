// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/classes/RadioCard.dart';
import 'package:project_1/classes/Remarks.dart';
import 'package:project_1/classes/SubPages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SAPOM_Page extends StatefulWidget {
  @override
  _SAPOM_PageState createState() => _SAPOM_PageState();
}

class _SAPOM_PageState extends State<SAPOM_Page> {
  @override
  Widget build(BuildContext context) {
    final List<RadioCard> _cards1 = [
      buildCard('Temperature of cold room reads negative eighteen (-18°C)',
          '10', 1, this),
      buildCard(
          'Temperature of cold room reads \n above negative eighteen \n celsius (-17°C to -12°C)',
          '8',
          1,
          this),
      buildCard('Temperature of cold room is fluctuating', '6', 1, this),
      buildCard('Cold room thaws out frequently', '4', 1, this),
      buildCard('Cold room is broken and \n shutdown', '2', 1, this),
    ];
    final List<RadioCard> _cards2 = [
      buildCard('Temperature of chiller is zero \n to four degrees celsius',
          '10', 2, this),
      buildCard(
          'Temperature of chiller reads \n above four degrees celsius \n (+5°C to +8°C)',
          '8',
          2,
          this),
      buildCard('Temperature of chiller is \n fluctuating', '6', 2, this),
      buildCard(
          'Chiller is not accurate with the \n set temperature', '4', 2, this),
      buildCard('Chiller is broken and shutdown', '2', 2, this),
    ];
    final List<RadioCard> _cards3 = [
      buildCard('Meats are free from Off odour/ discoloration/ slimy surface',
          '10', 3, this),
      buildCard('Some meat packages/boxes are damaged', '8', 3, this),
      buildCard(
          'Meat packages/boxes are not \n arranged properly', '6', 3, this),
      buildCard('Meats are with Off odour/ discoloration/ slimy surface', '4',
          3, this),
      buildCard('Fresh and contaminated meats \n are mixed', '2', 3, this),
    ];
    final List<RadioCard> _cards4 = [
      buildCard(
          'Cold storage room/refrigerator is \n not overload (60% of capacity)',
          '10',
          4,
          this),
      buildCard('Meats are properly segregated', '8', 4, this),
      buildCard(
          'Meats are stacked higher than recommended height', '6', 4, this),
      buildCard(
          'Meat packages/boxes are not \n arranged properly', '4', 4, this),
      buildCard('Overloaded cold storage', '2', 4, this),
    ];
    final List<RadioCard> _cards5 = [
      buildCard(
          'All products are labeled with \n name and date (expiry/delivery)',
          '10',
          5,
          this),
      buildCard('Some products are not labeled \n with name', '8', 5, this),
      buildCard('Some products are not labeled \n with date (expiry/delivery)',
          '6', 5, this),
      buildCard('Some products were not \n accurately labeled', '4', 5, this),
      buildCard('All products do not have \n any labels', '2', 5, this),
    ];
    final List<RadioCard> _cards6 = [
      buildCard('Frozen products are thawed in refrigerator before display',
          '10', 6, this),
      buildCard('Vacuumed frozen products are \n forcely thawed', '8', 6, this),
      buildCard('Some frozen products are frozen', '6', 6, this),
      buildCard(
          'Frozen products are thawed in \n room temperature', '4', 6, this),
      buildCard(
          'Frozen products are thawed \n directly in water', '2', 6, this),
    ];
    final List<RadioCard> _cards7 = [
      buildCard(
          'Packaging and pack seals are \n intact, without holes, leakage, \n dents, and vacuum pack intact',
          '10',
          7,
          this),
      buildCard(
          'Some packaging and pack seals \n are not intact', '8', 7, this),
      buildCard(
          'Some packaging and pack seals \n are not intact and with holes',
          '6',
          7,
          this),
      buildCard(
          'Some packaging and pack seals \n are not intact, with holes, leakage, dents and vacuumed products are loosely packed',
          '4',
          7,
          this),
      buildCard('Ice is present inside the products \n that are loosely packed',
          '2', 7, this),
    ];
    final List<RadioCard> _cards8 = [
      buildCard(
          'Meat products are under "best \n before" / expiry or use by date',
          '10',
          8,
          this),
      buildCard('Some products are near to expire', '8', 8, this),
      buildCard('Some of the products are not \n labeled with expiration dates',
          '6', 8, this),
      buildCard('Most of the products are not \n labeled with expiration dates',
          '4', 8, this),
      buildCard('Some meat products are expired', '2', 8, this),
    ];
    List<SubPage> pages = [
      SubPage(deck: _cards1, Remarks: buildRemarks(1)),
      SubPage(deck: _cards2, Remarks: buildRemarks(2)),
      SubPage(deck: _cards3, Remarks: buildRemarks(3)),
      SubPage(deck: _cards4, Remarks: buildRemarks(4)),
      SubPage(deck: _cards5, Remarks: buildRemarks(5)),
      SubPage(deck: _cards6, Remarks: buildRemarks(6)),
      SubPage(deck: _cards7, Remarks: buildRemarks(7)),
      SubPage(deck: _cards8, Remarks: buildRemarks(8)),
    ];
    PageController controller = PageController();
    ScrollController scrollController = ScrollController();
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(121, 112, 112, 1.0),
          body: Column(
            children: [
              Container(
                child: buildCont(context),
              ),
              Expanded(
                  child: Stack(children: [
                PageView(controller: controller, children: pages),
                Container(
                    alignment: Alignment.topCenter,
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 8,
                      effect: ExpandingDotsEffect(
                          spacing: 7.0,
                          radius: 5.0,
                          dotHeight: 10,
                          activeDotColor: Colors.grey),
                    )),
              ])),
              Column(
                children: [
                  Text('Select Rate to Proceed',
                      style: GoogleFonts.hahmlet(
                          color: Colors.white, fontSize: 15)),
                  Container(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: buildNxtBtn(context, controller, pages),
                  )
                ],
              )
            ],
          )),
    );
  }
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

RadioCard buildCard(String text, String value, int deck, State state) =>
    RadioCard(
        text: text, value: value, deck: deck, value_key: 'SAPOM', state: state);

Remarks buildRemarks(int deck) => Remarks(deck: deck, value_key: "SAPOM");

Widget buildNxtBtn(
        BuildContext context, PageController controller, List pages) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color(0xFFAA2121),
          minimumSize: Size(355, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {
        if (controller.page != pages.length - 1) {
          controller.nextPage(
              duration: Duration(milliseconds: 400), curve: Curves.easeIn);
        } else {
          context.go("/CSSDA");
        }
      },
      child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
    );
