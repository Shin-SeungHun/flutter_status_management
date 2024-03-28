import 'package:flutter_status_management/data/data_source/image_api.dart';
import 'package:flutter_status_management/data/dto/image_dto.dart';
import 'package:flutter_status_management/data/mapper/image_mapper.dart';
import 'package:flutter_status_management/data/model/image_model.dart';
import 'package:flutter_status_management/data/repository/image_item_repository.dart';

class ImageItemRepositoryImpl implements ImageItemRepository {
  final ImageApi _api;

  const ImageItemRepositoryImpl({
    required ImageApi api,
  }) : _api = api;

  @override
  Future<List<ImageModel>> getImageItems({required String query}) async {
    final ImageDto dto = await _api.getImageResult(query: query);

    if (dto.hits == null) {
      return [];
    }

    return dto.hits!.map((e) => e.toImageItem()).toList();
  }


}