import 'package:flutter/material.dart';

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
              Switch(value: true, onChanged: (news) {})
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.blue.withOpacity(0.3),
          ),
          SizedBox(
            height: 30,
          ),
          Slider(value: 0.3, onChanged: (value) {})
        ],
      ),
    );
  }
}
