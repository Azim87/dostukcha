import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/token/token_model.dart';

part 'token_entity.freezed.dart';

@freezed
class TokenEntity with _$TokenEntity {
  const factory TokenEntity({
    @JsonKey(name: 'Data') final Data? data,
    @JsonKey(name: 'ErrorCode') final int? errorCode,
    @JsonKey(name: 'Message') final String? message,
    @JsonKey(name: 'Success') final bool? success,
  }) = _TokenEntity;
}
