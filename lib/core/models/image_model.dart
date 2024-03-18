import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase/core/db/db_model.dart';
import 'package:showcase/core/db/db_table.dart';
import 'package:showcase/features/settings/domain/entities/image_entity.dart';

part 'image_model.freezed.dart';

part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel implements ImageEntity, DbModel{
  const ImageModel._();
  static const DbTable table = DbTable.image;

  @override
  DbTable get dbTable => table;

  const factory ImageModel({
    required int id,
    required String path,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, Object?> json) => _$ImageModelFromJson(json);
}
