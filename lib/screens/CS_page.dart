// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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

class CS_page extends StatefulWidget {
  @override
  _CS_pageState createState() => _CS_pageState();
}

class _CS_pageState extends State<CS_page> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: context.read<PageCubit>().state);
    ScrollController scrollController = ScrollController(
        initialScrollOffset: context.read<ScrollCubit>().state);
    final List<RadioCard> _cards1 = [
      buildCard(
          'There are enough personnel to \n assist customers', '10', 1, this),
      buildCard('Not enough staff to take orders of customers', '8', 1, this),
      buildCard(
          'There are few personnel focus to \n assist customers', '6', 1, this),
      buildCard(
          'There are enough personnel but ignores customers', '4', 1, this),
      buildCard('No available staff to assist \n customers', '2', 1, this),
    ];
    final List<RadioCard> _cards2 = [
      buildCard('Greets customers with a smile', '10', 2, this),
      buildCard("Smiles but don't greet", '8', 2, this),
      buildCard("Greets but don't smile", '6', 2, this),
      buildCard('Smile is sly/not genuine', '4', 2, this),
      buildCard("Don't greet and smile", '2', 2, this),
    ];
    final List<RadioCard> _cards3 = [
      buildCard(
          'Taking orders and suggesting \n products are prompt, pleasant and clear',
          '10',
          3,
          this),
      buildCard('Takes order properly but not \n suggested additional products',
          '8', 3, this),
      buildCard('Seldom suggest products to \n customers', '6', 3, this),
      buildCard("Does not repeat customer's \n order to verify", '4', 3, this),
      buildCard('Never suggests promo items / \n other products', '2', 3, this),
    ];
    final List<RadioCard> _cards4 = [
      buildCard(
          'Preparation and assembling of \n orders are organize, accurate \n and fast',
          '10',
          4,
          this),
      buildCard('Products are not assembled \n properly', '8', 4, this),
      buildCard(
          'Products are accurately organized \n but served slow', '6', 4, this),
      buildCard('Products are inaccurately \n organized even served fast', '4',
          4, this),
      buildCard(
          'Products are not assembled \n properly, inaccurate and served \n slow',
          '2',
          4,
          this),
    ];
    final List<RadioCard> _cards5 = [
      buildCard(
          'Serve the meat order completely, courteously and helpfully with \n proper posture',
          '10',
          5,
          this),
      buildCard(
          'Staff is courteous and helpful \n with proper posture but orders \n were not completely served',
          '8',
          5,
          this),
      buildCard('Staff is courteous and helpful but \n with improper posture',
          '6', 5, this),
      buildCard(
          'Staff is courteous and helpful but \n with improper posture and orders \n are not completely served',
          '4',
          5,
          this),
      buildCard('Staff shows disrespect and \n not helpful', '2', 5, this),
    ];
    final List<RadioCard> _cards6 = [
      buildCard(
          'Thank/ask for repeat order \n naturally, sincerely and with \n eye contact',
          '10',
          6,
          this),
      buildCard('Thank the customer but without \n eye contact', '8', 6, this),
      buildCard('Serves without smiling', '6', 6, this),
      buildCard(
          'Thank the customer but not \n completely focused', '4', 6, this),
      buildCard('Do not thank customer and \n focuses on unimportant activity',
          '2', 6, this)
    ];
    List<SubPage> pages = [
      SubPage(deck: _cards1, Remarks: buildRemarks(1)),
      SubPage(deck: _cards2, Remarks: buildRemarks(2)),
      SubPage(deck: _cards3, Remarks: buildRemarks(3)),
      SubPage(deck: _cards4, Remarks: buildRemarks(4)),
      SubPage(deck: _cards5, Remarks: buildRemarks(5)),
      SubPage(deck: _cards6, Remarks: buildRemarks(6)),
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
                      count: 6,
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
                'Customer Service',
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
        text: text, value: value, deck: deck, value_key: 'CS', state: state);

Remarks buildRemarks(int deck) => Remarks(deck: deck, value_key: "CS");

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
            context.go("/MROV");
          }
        },
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
