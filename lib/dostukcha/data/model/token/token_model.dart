import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/token/token_entity.dart';

part 'token_model.freezed.dart';

part 'token_model.g.dart';

@freezed
class TokenModel with _$TokenModel {
  const factory TokenModel({
    @JsonKey(name: 'Data') final Data? data,
    @JsonKey(name: 'ErrorCode') final int? errorCode,
    @JsonKey(name: 'Message') final String? message,
    @JsonKey(name: 'Success') final bool? success,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) => _$TokenModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    final int? ClientId,
    final String? Token,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

extension TokenModelExt on TokenModel {
  TokenEntity tokenEntity() => TokenEntity(
        data: data,
        errorCode: errorCode,
        message: message,
        success: success,
      );
}
