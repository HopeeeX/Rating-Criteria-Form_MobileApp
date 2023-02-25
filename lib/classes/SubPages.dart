// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project_1/blocs/form/form_bloc.dart';
import 'package:project_1/classes/RadioCard.dart';
import 'package:project_1/cubits/scroll/scroll_cubit.dart';

class SubPage extends StatefulWidget {
  List<RadioCard> deck;
  Widget Remarks;
  SubPage({
    Key? key,
    required this.deck,
    required this.Remarks,
  }) : super(key: key);

  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController(
        initialScrollOffset: context.read<ScrollCubit>().state);
    return Container(
      padding: EdgeInsets.only(top: 17, left: 30, right: 30, bottom: 7),
      height: double.infinity,
      child: NotificationListener<ScrollEndNotification>(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              BlocBuilder<ResultFormBloc, ResultFormState>(
                  builder: (context, state) {
                return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.deck.length,
                    itemBuilder: (context, index) {
                      if (state.answers[widget.deck[index].value_key]![
                              widget.deck[index].deck - 1][0] ==
                          int.parse(widget.deck[index].value)) {
                        widget.deck[index].isSelected = true;
                      }
                      return widget.deck[index];
                    });
              }),
              widget.Remarks
            ],
          ),
        ),
        onNotification: (t) {
          context.read<ScrollCubit>().emit(scrollController.offset);
          return true;
        },
      ),
    );
  }
}
