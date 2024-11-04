import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter/counter_bloc.dart';
import 'package:flutter_application_1/bloc/counter/counter_event.dart';
import 'package:flutter_application_1/bloc/counter/counter_state.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: TextStyle(fontSize: 40),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: TextButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(increamentCounter());
                      },
                      child: Text("Increase"))),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(decreamentCounter());
                  },
                  child: Text("Decrease")),
            ],
          )
        ],
      ),
    );
  }
}
