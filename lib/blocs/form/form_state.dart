// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'form_bloc.dart';

class ResultFormState extends Equatable {
  final List<int> answers;

  const ResultFormState({required this.answers});

  factory ResultFormState.initial() => const ResultFormState(answers: []);

  @override
  List<Object> get props => [answers];

  @override
  bool get stringify => true;

  ResultFormState copyWith({
    List<int>? answers,
  }) {
    return ResultFormState(
      answers: answers ?? this.answers,
    );
  }
}
