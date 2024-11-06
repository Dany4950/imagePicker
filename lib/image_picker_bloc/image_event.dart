import 'package:equatable/equatable.dart';


abstract class ImageEvent extends Equatable {
  ImageEvent();
  @override
  List<Object> get props => [];
}

class GalleryPick extends ImageEvent{}

class ImageClick extends ImageEvent{}
