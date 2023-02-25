// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'package:project_1/blocs/filler/filler_bloc.dart';

class fillout_page extends StatefulWidget {
  @override
  _fillout_pageState createState() => _fillout_pageState();
}

class _fillout_pageState extends State<fillout_page> {
  var date_filled;
  var date = TextEditingController();
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: buildCont3(context),
            ),
            Container(
              padding: EdgeInsets.only(top: 240, left: 30, right: 30),
              child: buildOutletName(),
            ),
            Container(
              padding: EdgeInsets.only(top: 310, left: 30, right: 30),
              child: buildButcherName(),
            ),
            Container(
              padding: EdgeInsets.only(top: 380, left: 30, right: 30),
              child: buildAMName(),
            ),
            Container(
              padding: EdgeInsets.only(top: 450, left: 30, right: 30),
              child: buildDate(this, context),
            ),
            Container(
              padding: EdgeInsets.only(top: 520, left: 30, right: 30),
              child: buildStartTime(),
            ),
            Container(
              padding: EdgeInsets.only(top: 590, left: 30, right: 30),
              child: buildEndTime(),
            ),
            Container(
              padding: EdgeInsets.only(top: 660, left: 32, right: 32),
              child: buildNxtBtn1(context),
            )
          ],
        ),
      ));
}

Widget buildCont3(BuildContext context) => Container(
    width: double.infinity,
    height: 200,
    padding: EdgeInsets.only(top: 25, left: 20),
    decoration: BoxDecoration(
        color: Color.fromRGBO(121, 112, 112, 1.0),
        borderRadius: BorderRadius.circular(1),
        boxShadow: [BoxShadow(blurRadius: 1.0)]),
    child: Stack(
      children: [
        Container(
            child: InkWell(
          onTap: () => context.go("/visitor"),
          child: Container(
            child: Image.asset("assets/images/back_button.png"),
          ),
        )),
        Container(
            padding: EdgeInsets.only(top: 60, left: 5),
            child: Text(
              'Fill out the following information',
              style: GoogleFonts.hahmlet(
                fontSize: 27,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )),
      ],
    ));

Widget buildOutletName() => Container(
        child: SizedBox(
      width: double.infinity,
      height: 50.5,
      child: BlocBuilder<FillerBloc, FillerState>(
        builder: (context, state) {
          return TextField(
              onChanged: (value) {
                List<String> updatedInfo = List.from(state.info);
                updatedInfo[0] = value;
                context.read<FillerBloc>().emit(FillerState(info: updatedInfo));
                print(state.info);
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: "Name of Outlet",
                  labelStyle: GoogleFonts.hahmlet(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )));
        },
      ),
    ));

Widget buildButcherName() => Container(
        child: SizedBox(
      width: double.infinity,
      height: 50.5,
      child: BlocBuilder<FillerBloc, FillerState>(
        builder: (context, state) {
          return TextField(
              onChanged: (value) {
                List<String> updatedInfo = List.from(state.info);
                updatedInfo[1] = value;
                context.read<FillerBloc>().emit(FillerState(info: updatedInfo));
                print(state.info);
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: "Head Butcher Name",
                  labelStyle: GoogleFonts.hahmlet(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )));
        },
      ),
    ));

Widget buildAMName() => Container(
        child: SizedBox(
      width: double.infinity,
      height: 50.5,
      child: BlocBuilder<FillerBloc, FillerState>(
        builder: (context, state) {
          return TextField(
              onChanged: (value) {
                List<String> updatedInfo = List.from(state.info);
                updatedInfo[2] = value;
                context.read<FillerBloc>().emit(FillerState(info: updatedInfo));
                print(state.info);
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: "Area Manager Name",
                  labelStyle: GoogleFonts.hahmlet(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )));
        },
      ),
    ));

Widget buildDate(_fillout_pageState date_state, BuildContext context) {
  return Container(
      child: SizedBox(
    width: double.infinity,
    height: 50.5,
    child: BlocBuilder<FillerBloc, FillerState>(
      builder: (context, state) {
        return TextField(
            readOnly: true,
            controller: date_state.date,
            onTap: () async {
              DateTime? set_date;
              var date_input = await showCalendarDatePicker2Dialog(
                context: context,
                config: CalendarDatePicker2WithActionButtonsConfig(),
                dialogSize: const Size(325, 400),
                borderRadius: BorderRadius.circular(15),
              ).then((value) {
                set_date = value?.first;
                DateFormat formatter = DateFormat("yyyy-MM-dd");
                date_state.setState(() {
                  date_state.date.text = formatter.format(set_date!);
                });
                List<String> updatedInfo = List.from(state.info);
                updatedInfo[3] = formatter.format(set_date!);
                context.read<FillerBloc>().emit(FillerState(info: updatedInfo));
              });
            },
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 12),
                labelText: "Date",
                labelStyle: GoogleFonts.hahmlet(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Align(
                  widthFactor: 2.0,
                  heightFactor: 1.0,
                  child: Icon(Icons.calendar_today_rounded),
                )));
      },
    ),
  ));
}

Widget buildStartTime() => Container(
        child: SizedBox(
      width: double.infinity,
      height: 50.5,
      child: BlocBuilder<FillerBloc, FillerState>(
        builder: (context, state) {
          return TextField(
              onChanged: (value) {
                List<String> updatedInfo = List.from(state.info);
                updatedInfo[4] = value;
                context.read<FillerBloc>().emit(FillerState(info: updatedInfo));
                print(state.info);
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: "Start Time",
                  labelStyle: GoogleFonts.hahmlet(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )));
        },
      ),
    ));

Widget buildEndTime() => Container(
        child: SizedBox(
      width: double.infinity,
      height: 50.5,
      child: BlocBuilder<FillerBloc, FillerState>(
        builder: (context, state) {
          return TextField(
              onChanged: (value) {
                List<String> updatedInfo = List.from(state.info);
                updatedInfo[5] = value;
                context.read<FillerBloc>().emit(FillerState(info: updatedInfo));
                print(state.info);
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: "End Time",
                  labelStyle: GoogleFonts.hahmlet(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )));
        },
      ),
    ));

Widget buildNxtBtn1(BuildContext context) => Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFAA2121),
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => context.go("/PH"),
        child: Text(
          'Next',
          style: GoogleFonts.hahmlet(fontSize: 18),
        ),
      ),
    );
