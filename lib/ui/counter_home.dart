import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_application_1/bloc/counter_bloc/counter_event.dart';
import 'package:flutter_application_1/bloc/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.count.toString(),
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncreamentCounter());
                  },
                  child: Text("Increase")),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecreamentCounter());
                  },
                  child: Text("Decrease")),
            ],
          )
        ],
      ),
    );
  }
}
