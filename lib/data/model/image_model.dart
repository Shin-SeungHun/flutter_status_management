import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';

part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required int id,
    required String imageUrl,
    required String tags,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, Object?> json) =>
      _$ImageModelFromJson(json);
}