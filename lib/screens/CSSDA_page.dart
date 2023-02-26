// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

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

class CSSDA_page extends StatefulWidget {
  @override
  _CSSDA_pageState createState() => _CSSDA_pageState();
}

class _CSSDA_pageState extends State<CSSDA_page> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: context.read<PageCubit>().state);
    ScrollController scrollController = ScrollController(
        initialScrollOffset: context.read<ScrollCubit>().state);
    final List<RadioCard> _cards1 = [
      buildCard('Work surfaces are cleaned \n properly before starting work',
          '10', 1, this),
      buildCard('Walls are stained', '8', 1, this),
      buildCard(
          'Floors below & behind the counter \n and display rack are dirty',
          '6',
          1,
          this),
      buildCard('Floor is wet and dirty', '4', 1, this),
      buildCard('Area is dirty and not organized', '2', 1, this),
    ];
    final List<RadioCard> _cards2 = [
      buildCard(
          'Cleaning product like liquid \n detergent (food grade) is available',
          '10',
          2,
          this),
      buildCard('Some cleaning products are not available', '8', 2, this),
      buildCard('Cleaning products are \n not food grade', '6', 2, this),
      buildCard(
          'Cleaning products are stored \n near meat products', '4', 2, this),
      buildCard('No cleaning material available', '2', 2, this),
    ];
    final List<RadioCard> _cards3 = [
      buildCard(
          'Cleaning materials like mop, rags, squeegies/wiper are available',
          '10',
          3,
          this),
      buildCard('Some cleaning materials are not available', '8', 3, this),
      buildCard('Cleaning materials are not in \n proper stage', '6', 3, this),
      buildCard('Some cleaning materials are \n damaged', '4', 3, this),
      buildCard('No cleaning material available', '2', 3, this),
    ];
    final List<RadioCard> _cards4 = [
      buildCard(
          'Store rooms are cleaned every \n two weeks or earlier as necessary',
          '10',
          4,
          this),
      buildCard('Store rooms are sometimes maintained', '8', 4, this),
      buildCard('Store rooms are seldom \n maintained', '6', 4, this),
      buildCard('Store rooms have foul odor', '4', 4, this),
      buildCard(
          'Store rooms are dirty and with the presence of pests and rodents',
          '2',
          4,
          this),
    ];
    final List<RadioCard> _cards5 = [
      buildCard(
          'Mop is odorless, sanitized before \n using and air dried after',
          '10',
          5,
          this),
      buildCard('Mop is soaked in dirty water', '8', 5, this),
      buildCard('Mop is damaged', '6', 5, this),
      buildCard('Mop is not available', '4', 5, this),
      buildCard('Mop has foul odor, dirty, full \n of grease', '2', 5, this),
    ];
    final List<RadioCard> _cards6 = [
      buildCard('Waste bins are leak proof and kept clean', '10', 6, this),
      buildCard('Waste bins are too small', '8', 6, this),
      buildCard('Waste bins are dirty', '6', 6, this),
      buildCard('Waste bins are broken', '4', 6, this),
      buildCard('Waste bins are not available', '2', 6, this),
    ];
    final List<RadioCard> _cards7 = [
      buildCard(
          'Storage area is clean and free of \n debris, empty boxes or other refuse',
          '10',
          7,
          this),
      buildCard('Empty boxes are scattered in the storage area', '8', 7, this),
      buildCard('Empty boxes are placed in aisles', '6', 7, this),
      buildCard(
          'Storage area is not dry and not well ventilated and well lighted',
          '4',
          7,
          this),
      buildCard(
          'Storage area are dirty and full of \n empty boxes', '2', 7, this),
    ];
    List<SubPage> pages = [
      SubPage(deck: _cards1, Remarks: buildRemarks(1)),
      SubPage(deck: _cards2, Remarks: buildRemarks(2)),
      SubPage(deck: _cards3, Remarks: buildRemarks(3)),
      SubPage(deck: _cards4, Remarks: buildRemarks(4)),
      SubPage(deck: _cards5, Remarks: buildRemarks(5)),
      SubPage(deck: _cards6, Remarks: buildRemarks(6)),
      SubPage(deck: _cards7, Remarks: buildRemarks(7)),
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
                      count: 7,
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

RadioCard buildCard(String text, String value, int deck, State state) =>
    RadioCard(
        text: text, value: value, deck: deck, value_key: 'CSSDA', state: state);

Remarks buildRemarks(int deck) => Remarks(deck: deck, value_key: "CSSDA");

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
            context.go("/CS");
          }
        },
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
