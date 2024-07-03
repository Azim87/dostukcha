import 'package:dartz/dartz.dart';

import '../error/failure.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> execute(Params params);
}
