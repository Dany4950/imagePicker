import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_application_1/ui/counter_home.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),

    
      child: MaterialApp(
        home:CounterHome() ,
      ),
    );
  }
}