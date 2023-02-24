// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new
part of 'form_bloc.dart';

class ResultFormState extends Equatable {
  Map<String, List> answers;

  ResultFormState({required this.answers});

  factory ResultFormState.initial() {
    List empty = new List.filled(10, List<dynamic>.filled(2, null));
    Map<String, List> answers = {
      "PH": empty,
      "TE": empty,
      "CSSDA": empty,
      "DOMP": empty,
      "CS": empty,
      "MROV": empty,
      "SAPOM": empty
    };
    int page;
    int scroll;
    return ResultFormState(answers: answers);
  }

  @override
  List<Object> get props => [answers];

  @override
  bool get stringify => true;

  ResultFormState copyWith({
    Map<String, List>? answers,
  }) {
    return ResultFormState(
      answers: answers ?? this.answers,
    );
  }
}
