import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class ScrollCubit extends Cubit<double> {
  ScrollCubit() : super(0);
  void getScroll(double current) => emit(current);
}
