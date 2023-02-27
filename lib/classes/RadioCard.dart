// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_1/blocs/form/form_bloc.dart';

class RadioCard extends StatefulWidget {
  final String text;
  final String value;
  final String value_key;
  final int deck;
  final State state;
  bool isSelected;
  RadioCard({
    Key? key,
    required this.text,
    required this.value,
    required this.value_key,
    required this.deck,
    required this.state,
    this.isSelected = false,
  }) : super(key: key);

  @override
  State<RadioCard> createState() => _RadioCardState();
}

class _RadioCardState extends State<RadioCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 18)),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              widget.text,
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
          BlocBuilder<ResultFormBloc, ResultFormState>(
            builder: (context, state) {
              final updatedAnswer = state.answers;
              List? exterior_list = updatedAnswer[widget.value_key];
              exterior_list = List.from(exterior_list!);
              final interior_list = List.from(exterior_list[widget.deck - 1]);

              final buttonText = Text(
                widget.value,
                style: TextStyle(color: const Color(0xFF988686)),
              );

              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      widget.isSelected ? Colors.red : const Color(0xFFFAF6F6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 4,
                ),
                child: buttonText,
                onPressed: () {
                  interior_list[0] = int.parse(widget.value);
                  exterior_list![widget.deck - 1] = interior_list;
                  updatedAnswer[widget.value_key] = exterior_list;
                  context
                      .read<ResultFormBloc>()
                      .emit(ResultFormState(answers: updatedAnswer));
                  print(state.answers);
                  widget.state.setState(() {});
                },
              );
            },
          ),
          Padding(padding: EdgeInsets.only(bottom: 15))
        ],
      ),
    );
  }
}
