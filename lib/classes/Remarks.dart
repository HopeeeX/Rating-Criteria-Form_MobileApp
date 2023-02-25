import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/blocs/form/form_bloc.dart';

class Remarks extends StatefulWidget {
  final String value_key;
  final int deck;
  const Remarks({super.key, required this.value_key, required this.deck});

  @override
  State<Remarks> createState() => _RemarksState();
}

class _RemarksState extends State<Remarks> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20),
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 337,
          height: 50.5,
          child: BlocBuilder<ResultFormBloc, ResultFormState>(
              builder: (context, state) {
            final updatedAnswer = state.answers;
            List? exterior_list = updatedAnswer[widget.value_key];
            exterior_list = List.from(exterior_list!);
            final interior_list = List.from(exterior_list[widget.deck - 1]);
            return TextField(
                controller: TextEditingController()
                  ..text = interior_list[1] == null ? "" : interior_list[1],
                onChanged: (value) {
                  interior_list[1] = value;
                  exterior_list![widget.deck - 1] = interior_list;
                  updatedAnswer[widget.value_key] = exterior_list;
                  context
                      .read<ResultFormBloc>()
                      .emit(ResultFormState(answers: updatedAnswer));
                  print(state.answers);
                },
                decoration: InputDecoration(
                    fillColor: Color.fromRGBO(236, 228, 228, 1.0),
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: "Enter your remarks here",
                    hintStyle: GoogleFonts.hahmlet(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )));
          }),
        ));
  }
}
