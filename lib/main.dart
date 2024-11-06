import 'package:flutter/material.dart';
import 'package:flutter_application_1/image_picker_bloc/image_bloc.dart';

import 'package:flutter_application_1/switch_bloc/switch_o_bloc.dart';
import 'package:flutter_application_1/ui/image_picker.dart';

import 'package:flutter_application_1/ui/slider_home.dart';
import 'package:flutter_application_1/util/image_picker_util.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImageBloc(ImagePickerUtil()),
      child: MaterialApp(
        home: ImagePicker(),
      ),
    );
  }
}
