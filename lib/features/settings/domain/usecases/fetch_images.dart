import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:showcase/core/error/failure.dart';
import 'package:showcase/core/usecases/usecase_without_params.dart';
import 'package:showcase/features/settings/domain/entities/image_entity.dart';
import 'package:showcase/features/settings/domain/repositories/image_repository.dart';

@injectable
class FetchImagesUseCase implements UseCaseWithoutParams<List<ImageEntity>> {
  final ImageRepository repository;

  FetchImagesUseCase({required this.repository});

  @override
  Future<Either<Failure, List<ImageEntity>>> call() {
    return repository.fetch({});
  }

}