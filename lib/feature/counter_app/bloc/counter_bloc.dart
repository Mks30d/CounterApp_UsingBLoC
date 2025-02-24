import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    // on<CounterEvent>((event, emit) {
    //   //implement event handler
    // });
    on<CounterIncrementEvent>(counterIncrementEvent);
  }

  int value = 0;

  FutureOr<void> counterIncrementEvent(
      CounterIncrementEvent event, Emitter<CounterState> emit) {
    value = value + 1;
    emit(CounterIncrementState(value: value));
  }
}
