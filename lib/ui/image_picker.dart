import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/image_picker_bloc/image_bloc.dart';
import 'package:flutter_application_1/image_picker_bloc/image_event.dart';
import 'package:flutter_application_1/image_picker_bloc/image_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<ImageBloc, ImageState>(
      builder: (context, state) {
        if (state.file == null) {
          return InkWell(
            onTap: () {
              context.read<ImageBloc>().add(ImageClick());
            },
            child: Center(
              child: CircleAvatar(
                child: Icon(Icons.camera),
              ),
            ),
          );
        } else {
          return Image.file(File(state.file!.path.toString()));
        }
      },
    ));
  }
}
