import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'filler_event.dart';
part 'filler_state.dart';

class FillerBloc extends Bloc<FillerEvent, FillerState> {
  @override
  FillerBloc() : super(FillerState.initial());
}
