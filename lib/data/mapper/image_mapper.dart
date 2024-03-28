import 'package:flutter_status_management/data/dto/image_dto.dart';
import 'package:flutter_status_management/data/model/image_model.dart';

extension HitsToImageItem on Hits {
  ImageModel toImageItem() {
    return ImageModel(
        id: id as int, imageUrl: previewURL ?? '', tags: tags ?? '');
  }
}