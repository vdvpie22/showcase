import 'package:dartz/dartz.dart';
import 'package:showcase/core/error/failure.dart';

abstract class UseCaseWithoutParams<Type> {
  Future<Either<Failure, Type>> call();
}
