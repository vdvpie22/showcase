import 'package:showcase/core/error/error_response.dart';
import 'package:showcase/core/error/failure.dart';

class ServerFailure extends Failure {
  final ErrorResponse? errorResponse;
  final StackTrace? stackTrace;

  ServerFailure({
    this.errorResponse,
    this.stackTrace,
  });
}
