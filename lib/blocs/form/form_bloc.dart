import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'form_event.dart';
part 'form_state.dart';

class ResultFormBloc extends Bloc<ResultFormEvent, ResultFormState> {
  @override
  ResultFormBloc() : super(ResultFormState.initial());

  @override
  Stream<ResultFormState> mapEventToState(ResultFormEvent event) async* {
    if (event is UpdateAnswerEvent) {
      List<int> updatedAnswer = state.answers;
      updatedAnswer.insert(event.index, event.answer);
      yield ResultFormState(answers: updatedAnswer);
    }
  }
}
