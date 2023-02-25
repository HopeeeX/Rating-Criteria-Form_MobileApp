// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new
part of 'filler_bloc.dart';

class FillerState extends Equatable {
  List<String> info;

  FillerState({required this.info});

  factory FillerState.initial() {
    List<String> info = List.filled(6, "");
    return FillerState(info: info);
  }

  @override
  List<Object> get props => [info];

  @override
  bool get stringify => true;

  FillerState copyWith({
    required List<String> info,
  }) {
    return FillerState(
      info: info,
    );
  }
}
