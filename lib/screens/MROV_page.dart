// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

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

class MROV_page extends StatefulWidget {
  @override
  _MROV_pageState createState() => _MROV_pageState();
}

class _MROV_pageState extends State<MROV_page> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: context.read<PageCubit>().state);
    ScrollController scrollController = ScrollController(
        initialScrollOffset: context.read<ScrollCubit>().state);
    final List<RadioCard> _cards1 = [
      buildCard(
          'Delivery Receipts (DR) are \n properly documented', '10', 1, this),
      buildCard('DRs are documented but \n incomplete', '8', 1, this),
      buildCard('DRs are incomplete and \n unreadable', '6', 1, this),
      buildCard('DRs are scattered elsewhere', '4', 1, this),
      buildCard('DRs are not kept for \n documentation', '2', 1, this)
    ];
    final List<RadioCard> _cards2 = [
      buildCard(
          'Ingredients and packaging supplies \n are enough for the daily operation',
          '10',
          2,
          this),
      buildCard(
          'Ingredients and packaging supplies \n are not enough for the daily \n operation',
          '8',
          2,
          this),
      buildCard(
          'Some ingredients are not used and nearly expire', '6', 2, this),
      buildCard('Plastic packagings are used \n improperly (personal use)', '4',
          2, this),
      buildCard(
          'Ingredients and packaging \n supplies are unavailable', '2', 2, this)
    ];
    final List<RadioCard> _cards3 = [
      buildCard('Meat stocks and buffer items are \n in the right volume', '10',
          3, this),
      buildCard('Items for buffer are exceeded the preferred count at 20%', '8',
          3, this),
      buildCard('Items for buffer are exceeded the preferred count at 50%', '6',
          3, this),
      buildCard('Items for buffer are exceeded the preferred count at 80%', '4',
          3, this),
      buildCard('Overcrowded meat stocks', '2', 3, this)
    ];
    final List<RadioCard> _cards4 = [
      buildCard('Fast moving products are always available', '10', 4, this),
      buildCard(
          'Fast moving products are available \n but not enough until next delivery',
          '8',
          4,
          this),
      buildCard(
          'Fast moving products are nearly \n out of stock', '6', 4, this),
      buildCard(
          'Fast moving products only available \n for the day', '4', 4, this),
      buildCard('No available fast moving products', '2', 4, this)
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
                    children: [
                      SubPage(deck: _cards1, Remarks: buildRemarks(1)),
                      SubPage(deck: _cards2, Remarks: buildRemarks(2)),
                      SubPage(deck: _cards3, Remarks: buildRemarks(3)),
                      SubPage(deck: _cards4, Remarks: buildRemarks(4)),
                    ]),
                Container(
                    alignment: Alignment.topCenter,
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 4,
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
                      child: buildNxtBtn(context),
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

RadioCard buildCard(String text, String value, int deck, State state) =>
    RadioCard(
        text: text, value: value, deck: deck, value_key: 'MROV', state: state);

Remarks buildRemarks(int deck) => Remarks(deck: deck, value_key: "MROV");

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
