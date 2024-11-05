import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  bool isbool;

  SwitchState({
    this.isbool = false,
  });

  SwitchState copyWith({bool? isbool}) {
    return SwitchState(
      isbool: isbool ?? this.isbool,
    );
  }

  @override
  List<Object> get props => [this.isbool];
}
