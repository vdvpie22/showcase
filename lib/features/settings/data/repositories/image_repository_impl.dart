import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:showcase/core/error/failure.dart';
import 'package:showcase/core/platform/network_info.dart';
import 'package:showcase/core/repositories/remote_repository_request.dart';
import 'package:showcase/features/settings/data/datasources/image_local_datasource.dart';
import 'package:showcase/features/settings/domain/entities/image_entity.dart';
import 'package:showcase/features/settings/domain/repositories/image_repository.dart';

@Injectable(as: ImageRepository)
class ImageRepositoryImpl implements ImageRepository {
  final ImageLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  ImageRepositoryImpl({required this.localDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, List<ImageEntity>>> fetch(Map<String, dynamic> params) async {
    var remoteRepositoryRequest = RemoteRepositoryRequest<List<ImageEntity>>(networkInfo);
    return remoteRepositoryRequest(localDataSource.fetch(params));
  }
}
