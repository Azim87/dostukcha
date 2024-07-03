import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_response_entity.freezed.dart';

@Freezed(genericArgumentFactories: true)
class AppResponseEntity<T> with _$AppResponseEntity<T> {
  const factory AppResponseEntity({
    @JsonKey(name: 'Data') final T? data,
    @JsonKey(name: 'ErrorCode') final int? errorCode,
    @JsonKey(name: 'Message') final String? message,
    @JsonKey(name: 'Success') final bool? success,
  }) = _AppResponseEntity;
}
