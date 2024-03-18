import 'package:showcase/core/error/error_response.dart';

class ServerException {
  final ErrorResponse? errorResponse;
  final StackTrace? stackTrace;

  ServerException({this.errorResponse, this.stackTrace});
}
