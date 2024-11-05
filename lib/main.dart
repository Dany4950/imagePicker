import 'package:flutter/material.dart';

import 'package:flutter_application_1/switch_bloc/switch_o_bloc.dart';

import 'package:flutter_application_1/ui/slider_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SwitchBloc(),
      child: MaterialApp(
        home: SliderHome(),
      ),
    );
  }
}
