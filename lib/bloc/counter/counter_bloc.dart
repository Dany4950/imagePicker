import 'package:flutter_application_1/bloc/counter/counter_event.dart';
import 'package:flutter_application_1/bloc/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<increamentCounter>(_increament);
    on<decreamentCounter>(_decreament);
  }
  void _increament(increamentCounter Event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decreament(decreamentCounter Event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
 