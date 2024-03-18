import 'package:dartz/dartz.dart';
import 'package:showcase/core/error/error_response.dart';
import 'package:showcase/core/error/failure.dart';
import 'package:showcase/core/error/server_exception.dart';
import 'package:showcase/core/error/server_failure.dart';
import 'package:showcase/core/platform/network_info.dart';

class RemoteRepositoryRequest<T> {
  final NetworkInfo networkInfo;

  RemoteRepositoryRequest(this.networkInfo);

  Future<Either<Failure, T>> call(Future<T> func) async {
    if (await this.networkInfo.isConnected) {
      try {
        T result = await func;
        return Right(result);
      } on ServerException catch (error) {
        return Left(ServerFailure(
            stackTrace: error.stackTrace, errorResponse: error.errorResponse));
      }
    } else {
      return Left(ServerFailure(
          errorResponse: ErrorResponse.noInternetConnectionError(),
          stackTrace: StackTrace.current));
    }
  }
}
