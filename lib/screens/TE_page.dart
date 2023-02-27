// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/classes/RadioCard.dart';
import 'package:project_1/classes/Remarks.dart';
import 'package:project_1/classes/SubPages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TE_Page extends StatefulWidget {
  @override
  _TE_PageState createState() => _TE_PageState();
}

class _TE_PageState extends State<TE_Page> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    final List<RadioCard> _cards1 = [
      buildCard(
          'Knives, sharpening stone, cleaver and other tools are cleaned and sanitized before the commencement of the day selling',
          '10',
          1,
          this),
      buildCard('Tools are clean but not in proper location', '8', 1, this),
      buildCard('Tools are clean but are \n broken/dent', '6', 1, this),
      buildCard('Tools are dirty', '4', 1, this),
      buildCard('Tools are incomplete, broken \n and dirty', '2', 1, this),
    ];
    final List<RadioCard> _cards2 = [
      buildCard(
          'Equipment/Machineries are in good condition, safe, clean and sanitized before the commencement of the day retailing/selling',
          '10',
          2,
          this),
      buildCard(
          'Some equipment/machineries \n are not in good condition but are clean',
          '8',
          2,
          this),
      buildCard(
          'Most equipment/machineries \n are not in good condition and are dirty',
          '6',
          2,
          this),
      buildCard('All equipment/machineries are \n in good condition but dirty',
          '4', 2, this),
      buildCard('All equipment/machineries are broken and unsanitized & dirty',
          '2', 2, this),
    ];
    final List<RadioCard> _cards3 = [
      buildCard(
          'All tools and equipment are \n washed with cleaning agent/detergent (food grade) and rinsed with clean warm water after \n every use',
          '10',
          3,
          this),
      buildCard(
          'All tools and equipment are \n washed with detergent (food grade) but not rinsed with clean warm water after every use',
          '8',
          3,
          this),
      buildCard(
          'All tools and equipment are not washed immediately every after use',
          '6',
          3,
          this),
      buildCard('Detergent use for washing is not food grade', '4', 3, this),
      buildCard(
          'All tools and equipment are unsanitized & dirty', '2', 3, this),
    ];
    List<SubPage> pages = [
      SubPage(deck: _cards1, Remarks: buildRemarks(1)),
      SubPage(deck: _cards2, Remarks: buildRemarks(2)),
      SubPage(deck: _cards3, Remarks: buildRemarks(3)),
    ];
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
                      count: 3,
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
      height: 160,
      padding: EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
          color: Color.fromRGBO(121, 112, 112, 1.0),
          borderRadius: BorderRadius.circular(1)),
      child: Stack(
        children: [
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

RadioCard buildCard(String text, String value, int deck, State state) =>
    RadioCard(
        text: text, value: value, deck: deck, value_key: 'TE', state: state);

Remarks buildRemarks(int deck) => Remarks(deck: deck, value_key: "TE");

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
          context.go("/DOMP");
        }
      },
      child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
    );
