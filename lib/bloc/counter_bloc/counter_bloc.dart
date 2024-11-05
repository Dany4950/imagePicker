import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc/counter_bloc/counter_event.dart';
import 'package:flutter_application_1/bloc/counter_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncreamentCounter>(_increament);
    on<DecreamentCounter>(_decreament);
  }
  void _increament(IncreamentCounter Event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count *2 ));
  }

  void _decreament(DecreamentCounter Event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count - 1));
  }
}
