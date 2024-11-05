import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/switch_bloc/switch_event.dart';
import 'package:flutter_application_1/switch_bloc/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<SwitchEvent>(
      (event, emit) {
        emit(state.copyWith(isbool: !state.isbool));
      },
    );
  }
}
