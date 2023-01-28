part of 'form_bloc.dart';

abstract class ResultFormEvent extends Equatable {
  const ResultFormEvent();

  @override
  List<Object> get props => [];
}

class UpdateAnswerEvent extends ResultFormEvent {
  final int answer;
  final int index;

  const UpdateAnswerEvent({required this.answer, required this.index});
}
