// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new
part of 'form_bloc.dart';

class ResultFormState extends Equatable {
  Map<String, List> answers;

  ResultFormState({required this.answers});

  factory ResultFormState.initial() {
    Map<String, List> answers = {
      "PH": new List.filled(4, List<dynamic>.filled(2, "")),
      "TE": new List.filled(3, List<dynamic>.filled(2, "")),
      "CSSDA": new List.filled(7, List<dynamic>.filled(2, "")),
      "DOMP": new List.filled(5, List<dynamic>.filled(2, "")),
      "CS": new List.filled(6, List<dynamic>.filled(2, "")),
      "MROV": new List.filled(4, List<dynamic>.filled(2, "")),
      "SAPOM": new List.filled(8, List<dynamic>.filled(2, ""))
    };
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
