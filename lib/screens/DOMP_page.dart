// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/classes/RadioCard.dart';
import 'package:project_1/classes/Remarks.dart';
import 'package:project_1/classes/SubPages.dart';
import 'package:project_1/cubits/page/page_cubit.dart';
import 'package:project_1/cubits/scroll/scroll_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DOMP_page extends StatefulWidget {
  @override
  _DOMP_pageState createState() => _DOMP_pageState();
}

class _DOMP_pageState extends State<DOMP_page> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: context.read<PageCubit>().state);
    ScrollController scrollController = ScrollController(
        initialScrollOffset: context.read<ScrollCubit>().state);
    final List<RadioCard> _cards1 = [
      buildCard('Fresh appearance of meats', '10', 1, this),
      buildCard('Some meats are discoloured', '8', 1, this),
      buildCard('Inspects are visible in the display', '6', 1, this),
      buildCard('Most meats displayed are frozen', '4', 1, this),
      buildCard(
          'Contaminated and discoloured \n meats are displayed', '2', 1, this),
    ];
    final List<RadioCard> _cards2 = [
      buildCard('Planogram are followed and no overcrowding', '10', 2, this),
      buildCard('Some meat displayed are \n incomplete', '8', 2, this),
      buildCard(
          'Some meats displayed are not in proper position based on the planogram',
          '6',
          2,
          this),
      buildCard('Meats displayed are incomplete', '4', 2, this),
      buildCard(
          'Planogram are not followed and overcrowded display', '2', 2, this),
    ];
    final List<RadioCard> _cards3 = [
      buildCard(
          'Meat display cabinets are wiped with clean cloth and all lights must be operational',
          '10',
          3,
          this),
      buildCard(
          'Meat display cabinets are clean \n but some lights are not \n operational',
          '8',
          3,
          this),
      buildCard(
          'Meat display cabinets are dirty \n but all lights are operational',
          '6',
          3,
          this),
      buildCard('Cabinets are dirty and all lights \n are not operational', '4',
          3, this),
      buildCard('Cabinets are rusty, dirty and all lights are not operational',
          '2', 3, this),
    ];
    final List<RadioCard> _cards4 = [
      buildCard('Signages and price tags are accurately displayed and visible',
          '10', 4, this),
      buildCard('Some signages are not accurately placed', '8', 4, this),
      buildCard('Some prices are not updated', '6', 4, this),
      buildCard('Most signages are faded and dirty', '4', 4, this),
      buildCard(
          'Most signages are not properly placed and prices are not updated',
          '2',
          4,
          this),
    ];
    final List<RadioCard> _cards5 = [
      buildCard('Value-Added products are well-covered', '10', 5, this),
      buildCard('Some Value-Added products are uncovered', '8', 5, this),
      buildCard('Some Value-Added products are not available', '6', 5, this),
      buildCard('Value-Added products are uncovered', '4', 5, this),
      buildCard('Value-Added products are incomplete, discolored and slimy',
          '2', 5, this),
    ];
    List<SubPage> pages = [
      SubPage(deck: _cards1, Remarks: buildRemarks(1)),
      SubPage(deck: _cards2, Remarks: buildRemarks(2)),
      SubPage(deck: _cards3, Remarks: buildRemarks(3)),
      SubPage(deck: _cards4, Remarks: buildRemarks(4)),
      SubPage(deck: _cards5, Remarks: buildRemarks(5)),
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
                PageView(
                    onPageChanged: (value) {
                      context.read<PageCubit>().emit(value);
                    },
                    controller: controller,
                    children: pages),
                Container(
                    alignment: Alignment.topCenter,
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 5,
                      effect: ExpandingDotsEffect(
                          spacing: 7.0,
                          radius: 5.0,
                          dotHeight: 10,
                          activeDotColor: Colors.grey),
                    )),
              ])),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text('Select Rate to Proceed',
                          style: GoogleFonts.hahmlet(
                              color: Colors.white, fontSize: 15)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: buildNxtBtn(context, controller, pages),
                    )
                  ],
                ),
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

RadioCard buildCard(String text, String value, int deck, State state) =>
    RadioCard(
        text: text, value: value, deck: deck, value_key: 'DOMP', state: state);

Remarks buildRemarks(int deck) => Remarks(deck: deck, value_key: "DOMP");

Widget buildNxtBtn(
        BuildContext context, PageController controller, List pages) =>
    Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFAA2121),
            minimumSize: Size(355, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          if (controller.page != pages.length - 1) {
            controller.nextPage(
                duration: Duration(milliseconds: 400), curve: Curves.easeIn);
          } else {
            BlocProvider.of<PageCubit>(context).emit(0);
            BlocProvider.of<ScrollCubit>(context).emit(0);
            context.go("/SAPOM");
          }
        },
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
