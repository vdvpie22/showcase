import 'package:dartz/dartz.dart';
import 'package:showcase/core/error/failure.dart';
import 'package:showcase/features/settings/domain/entities/image_entity.dart';

abstract class ImageRepository {
  Future<Either<Failure, List<ImageEntity>>> fetch(Map<String, dynamic> params);
}