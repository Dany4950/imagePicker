import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/switch_bloc/switch_event.dart';
import 'package:flutter_application_1/switch_bloc/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<SwitchEvent>(_Switch);
    on<SliderEvent>(_Slider);
  }
  void _Switch(SwitchEvent Event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isbool: state.isbool));
  }

  void _Slider(SliderEvent Event, Emitter<SwitchState> emit) {
    emit(state.copyWith(slider: Event.slider));
  }
}
