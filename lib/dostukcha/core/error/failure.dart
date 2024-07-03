import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure() = _ServerFailure;

  const factory Failure.cacheFailure() = _CacheFailure;

  const factory Failure.connectionFailure() = _ConnectionFailure;

  const factory Failure.dioFailure({String? err}) = _DioFailure;

  const factory Failure.baseError({ final String? error}) = _BaseError;
}
