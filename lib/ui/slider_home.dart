import 'package:flutter/material.dart';
import 'package:flutter_application_1/switch_bloc/switch_event.dart';
import 'package:flutter_application_1/switch_bloc/switch_o_bloc.dart';
import 'package:flutter_application_1/switch_bloc/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderHome extends StatefulWidget {
  const SliderHome({super.key});

  @override
  State<SliderHome> createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {
  bool news = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Notifications"),
              SizedBox(
                width: 40,
              ),
              BlocBuilder<SwitchBloc, SwitchState>(
                builder: (context, state) {
                  return Switch(
                      value: state.isbool,
                      onChanged: (news) {
                        context.read<SwitchBloc>().add(EnableOrDisable());
                      });
                },
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            builder: (context, state) {
              return Container(
                height: 400,
                width: double.infinity,
                color: Colors.blue.withOpacity(state.slider),
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            builder: (context, state) {
              return Slider(
                  value: state.slider,
                  onChanged: (value) {
                    print(value);
                    context.read<SwitchBloc>().add(SliderEvent(slider: value));
                  });
            },
          )
        ],
      ),
    );
  }
}
