// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CS_page extends StatefulWidget {
  @override
  _CS_pageState createState() => _CS_pageState();
}

class _CS_pageState extends State<CS_page> {
  final List _cards1 = [
    buildCard('There are enough personnel to \n assist customers', '10'),
    buildCard('Not enough staff to take orders of customers', '8'),
    buildCard('There are few personnel focus to \n assist customers', '6'),
    buildCard('There are enough personnel but ignores customers', '4'),
    buildCard('No available staff to assist \n customers', '2'),
  ];
  final List _cards2 = [
    buildCard('Greets customers with a smile', '10'),
    buildCard("Smiles but don't greet", '8'),
    buildCard("Greets but don't smile", '6'),
    buildCard('Smile is sly/not genuine', '4'),
    buildCard("Don't greet and smile", '2'),
  ];
  final List _cards3 = [
    buildCard(
        'Taking orders and suggesting \n products are prompt, pleasant and clear',
        '10'),
    buildCard(
        'Takes order properly but not \n suggested additional products', '8'),
    buildCard('Seldom suggest products to \n customers', '6'),
    buildCard("Does not repeat customer's \n order to verify", '4'),
    buildCard('Never suggests promo items / \n other products', '2'),
  ];
  final List _cards4 = [
    buildCard(
        'Preparation and assembling of \n orders are organize, accurate \n and fast',
        '10'),
    buildCard('Products are not assembled \n properly', '8'),
    buildCard('Products are accurately organized \n but served slow', '6'),
    buildCard('Products are inaccurately \n organized even served fast', '4'),
    buildCard(
        'Products are not assembled \n properly, inaccurate and served \n slow',
        '2'),
  ];
  final List _cards5 = [
    buildCard(
        'Serve the meat order completely, courteously and helpfully with \n proper posture',
        '10'),
    buildCard(
        'Staff is courteous and helpful \n with proper posture but orders \n were not completely served',
        '8'),
    buildCard(
        'Staff is courteous and helpful but \n with improper posture', '6'),
    buildCard(
        'Staff is courteous and helpful but \n with improper posture and orders \n are not completely served',
        '4'),
    buildCard('Staff shows disrespect and \n not helpful', '2'),
  ];
  final List _cards6 = [
    buildCard(
        'Thank/ask for repeat order \n naturally, sincerely and with \n eye contact',
        '10'),
    buildCard('Thank the customer but without \n eye contact', '8'),
    buildCard('Serves without smiling', '6'),
    buildCard('Thank the customer but not \n completely focused', '4'),
    buildCard(
        'Do not thank customer and \n focuses on unimportant activity', '2')
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
                    )
                  ]),
                  Container(
                      alignment: Alignment.topCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
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
        onPressed: () => context.go("/MROV"),
        child: Text('Next', style: GoogleFonts.hahmlet(fontSize: 17)),
      ),
    );
