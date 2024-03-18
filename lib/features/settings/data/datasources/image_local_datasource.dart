import 'package:showcase/core/models/image_model.dart';

abstract class ImageLocalDataSource {
  Future<List<ImageModel>> fetch(Map<String, dynamic> requestParams);
}