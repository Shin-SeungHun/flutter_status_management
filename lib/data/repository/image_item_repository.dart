import 'package:flutter_status_management/data/model/image_model.dart';

abstract interface class ImageItemRepository {
  Future<List<ImageModel>> getImageItems({required String query});
}