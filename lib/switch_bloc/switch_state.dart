import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  bool isbool;
  double slider;

  SwitchState({
    this.slider = 1,
    this.isbool = false,
  });

  SwitchState copyWith({bool? isbool, double? slider}) {
    return SwitchState(
      isbool: isbool ?? this.isbool,
      slider: slider ?? this.slider,
    );
  }

  @override
  List<Object> get props => [isbool, slider];
}
