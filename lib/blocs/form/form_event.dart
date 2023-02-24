// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'form_bloc.dart';

abstract class ResultFormEvent extends Equatable {
  const ResultFormEvent();

  @override
  List<Object> get props => [];
}

class UpdateAnswerEvent extends ResultFormEvent {
  int answer;
  String key;
  int index;

  UpdateAnswerEvent({
    required this.answer,
    required this.key,
    required this.index,
  });
}
