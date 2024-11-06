import 'package:image_picker/image_picker.dart';

class ImagePickerUtil {
  final ImagePicker _imagePicker = ImagePicker();

  Future<XFile?> CaptureImage() async {
    final XFile? _file =
        await _imagePicker.pickImage(source: ImageSource.camera);
    return _file;
  }
}
