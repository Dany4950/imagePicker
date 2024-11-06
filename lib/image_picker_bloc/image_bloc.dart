import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/image_picker_bloc/image_event.dart';
import 'package:flutter_application_1/image_picker_bloc/image_state.dart';

import 'package:flutter_application_1/util/image_picker_util.dart';
import 'package:image_picker/image_picker.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final ImagePickerUtil _imagePickerUtil;

  ImageBloc(this._imagePickerUtil) : super(ImageState()) {
    on<ImageClick>(_imageClick);
    on<GalleryPick>(_galleryclick);
  }

  void _imageClick(ImageClick Event, Emitter<ImageState> emit) async {
    XFile? _file = await _imagePickerUtil.CaptureImage();
    emit(state.copyWith(file: _file));
  }

  void _galleryclick(GalleryPick Event, Emitter<ImageState> emit) async {
    XFile? _file = await _imagePickerUtil.CaptureImage();
    emit(state.copyWith(file: _file));
  }
}
