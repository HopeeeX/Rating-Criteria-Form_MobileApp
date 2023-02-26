// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_unnecessary_containers, sized_box_for_whitespace

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

class PH_page extends StatefulWidget {
  @override
  PH_pageState createState() => PH_pageState();
}

class PH_pageState extends State<PH_page> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: context.read<PageCubit>().state);
    ScrollController scrollController = ScrollController(
        initialScrollOffset: context.read<ScrollCubit>().state);
    final List<RadioCard> _cards1 = [
      buildCard(
          'Wear clean uniform, Apron, Face mask/Spit Guard, gloves, hairnet, visor cap, lab gown and boots or any PPE required by the retail outlet',
          '10',
          1,
          this),
      buildCard('1 deviation in grooming and PPE', '8', 1, this),
      buildCard(
          '2-3 deviations in grooming and \n PPE (i.e., no spit guard, no \n hairnet)',
          '6',
          1,
          this),
      buildCard('Wear dirty PPE', '4', 1, this),
      buildCard('Incomplete and dirty PPE', '2', 1, this),
    ];

    final List<RadioCard> _cards2 = [
      buildCard(
          'Clean haircut, no hair dye, no beard tattoo, moustache and not wearing jewelries',
          '10',
          2,
          this),
      buildCard('Long Hair', '8', 2, this),
      buildCard('With moustache, with beard', '6', 2, this),
      buildCard('With hair dye', '4', 2, this),
      buildCard(
          'Long hair with hair dye color, with moustache & beard and wear jewelries',
          '2',
          2,
          this),
    ];
    final List<RadioCard> _cards3 = [
      buildCard(
          'Fingernails are trimmed, clean \n and unpolished', '10', 3, this),
      buildCard('Fingernails are not trimmed but unpolished', '8', 3, this),
      buildCard('Fingernails are dirty', '6', 3, this),
      buildCard('Fingernails are long and with \n polish', '4', 3, this),
      buildCard(
          'Fingernails are dirty, not trimmed \n and polished', '2', 3, this)
    ];
    final List<RadioCard> _cards4 = [
      buildCard(
          'Personnel serving meat washes hands often and uses tong/ladle, etc. for serving if necessary',
          '10',
          4,
          this),
      buildCard(
          'Sometimes washes hands but uses tong/ladle, etc. for serving if necessary',
          '8',
          4,
          this),
      buildCard(
          'Sometimes washes hands and do not use tong/ladle, etc. for serving if necessary',
          '6',
          4,
          this),
      buildCard(
          'Never washes hands but using tong/ladle, etc. for serving if necessary',
          '4',
          4,
          this),
      buildCard('Never washes hands and do not \n use tools for serving', '2',
          4, this)
    ];
    List<SubPage> pages = [
      SubPage(deck: _cards1, Remarks: buildRemarks(1)),
      SubPage(deck: _cards2, Remarks: buildRemarks(2)),
      SubPage(deck: _cards3, Remarks: buildRemarks(3)),
      SubPage(deck: _cards4, Remarks: buildRemarks(4)),
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
                    controller: controller,
                    onPageChanged: (value) {
                      context.read<PageCubit>().emit(value);
                    },
                    children: pages),
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
              child: InkWell(
            onTap: () => context.go("/fillout"),
            child: Container(
              child: Image.asset("assets/images/back_button.png"),
            ),
          )),
          Container(
              padding: EdgeInsets.only(top: 50, left: 5),
              child: Text(
                'Personal Hygiene',
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
        text: text, value: value, deck: deck, value_key: 'PH', state: state);

Remarks buildRemarks(int deck) => Remarks(deck: deck, value_key: "PH");

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
            context.go("/TE");
          }
        },
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
