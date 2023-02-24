import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'form_event.dart';
part 'form_state.dart';

class ResultFormBloc extends Bloc<ResultFormEvent, ResultFormState> {
  @override
  ResultFormBloc() : super(ResultFormState.initial());
}
