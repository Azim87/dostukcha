// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppResponseModel<T> _$$_AppResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_AppResponseModel<T>(
      data: _$nullableGenericFromJson(json['Data'], fromJsonT),
      errorCode: json['ErrorCode'] as int?,
      message: json['Message'] as String?,
      success: json['Success'] as bool?,
    );

Map<String, dynamic> _$$_AppResponseModelToJson<T>(
  _$_AppResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'Data': _$nullableGenericToJson(instance.data, toJsonT),
      'ErrorCode': instance.errorCode,
      'Message': instance.message,
      'Success': instance.success,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
