import 'package:bloc/bloc.dart';

class ScrollCubit extends Cubit<double> {
  ScrollCubit() : super(0);
  void getScroll(double current) => emit(current);
}
