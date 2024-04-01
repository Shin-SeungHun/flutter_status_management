import 'package:flutter_bloc/flutter_bloc.dart';

class CountCubit extends Cubit<int> {
  // cubit 만들때 값 초기화
  CountCubit() : super(0);

  void addCount() {
    emit(state + 1);
  }

  void substractCount() {
    emit(state - 1);
  }
}
