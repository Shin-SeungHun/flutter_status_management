import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountBloc extends Bloc<CountEvent, int> {
  CountBloc() : super(0) {
    on<AddCountEvent>((event, emit) {
      emit(state + 1);
    });

    on<substractCountEvent>((event, emit) {
      emit(state - 1);
    });
  }
}

abstract class CountEvent extends Equatable {}

class AddCountEvent extends CountEvent {
  @override
  List<Object?> get props => [];
}

class substractCountEvent extends CountEvent {
  @override
  List<Object?> get props => [];
}
