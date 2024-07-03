// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateRequestData _$CreateRequestDataFromJson(Map<String, dynamic> json) {
  return _CreateRequestData.fromJson(json);
}

/// @nodoc
mixin _$CreateRequestData {
  @JsonKey(name: 'RequestId')
  String? get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpireTime')
  String? get expireTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'VerificationCheckTimeoutSeconds')
  int? get verificationCheckTimeoutSeconds =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'VerificationCheckCount')
  int? get verificationCheckCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRequestDataCopyWith<CreateRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestDataCopyWith<$Res> {
  factory $CreateRequestDataCopyWith(
          CreateRequestData value, $Res Function(CreateRequestData) then) =
      _$CreateRequestDataCopyWithImpl<$Res, CreateRequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'RequestId') String? requestId,
      @JsonKey(name: 'ExpireTime') String? expireTime,
      @JsonKey(name: 'VerificationCheckTimeoutSeconds')
      int? verificationCheckTimeoutSeconds,
      @JsonKey(name: 'VerificationCheckCount') int? verificationCheckCount});
}

/// @nodoc
class _$CreateRequestDataCopyWithImpl<$Res, $Val extends CreateRequestData>
    implements $CreateRequestDataCopyWith<$Res> {
  _$CreateRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? expireTime = freezed,
    Object? verificationCheckTimeoutSeconds = freezed,
    Object? verificationCheckCount = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationCheckTimeoutSeconds: freezed ==
              verificationCheckTimeoutSeconds
          ? _value.verificationCheckTimeoutSeconds
          : verificationCheckTimeoutSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationCheckCount: freezed == verificationCheckCount
          ? _value.verificationCheckCount
          : verificationCheckCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateRequestDataCopyWith<$Res>
    implements $CreateRequestDataCopyWith<$Res> {
  factory _$$_CreateRequestDataCopyWith(_$_CreateRequestData value,
          $Res Function(_$_CreateRequestData) then) =
      __$$_CreateRequestDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'RequestId') String? requestId,
      @JsonKey(name: 'ExpireTime') String? expireTime,
      @JsonKey(name: 'VerificationCheckTimeoutSeconds')
      int? verificationCheckTimeoutSeconds,
      @JsonKey(name: 'VerificationCheckCount') int? verificationCheckCount});
}

/// @nodoc
class __$$_CreateRequestDataCopyWithImpl<$Res>
    extends _$CreateRequestDataCopyWithImpl<$Res, _$_CreateRequestData>
    implements _$$_CreateRequestDataCopyWith<$Res> {
  __$$_CreateRequestDataCopyWithImpl(
      _$_CreateRequestData _value, $Res Function(_$_CreateRequestData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? expireTime = freezed,
    Object? verificationCheckTimeoutSeconds = freezed,
    Object? verificationCheckCount = freezed,
  }) {
    return _then(_$_CreateRequestData(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationCheckTimeoutSeconds: freezed ==
              verificationCheckTimeoutSeconds
          ? _value.verificationCheckTimeoutSeconds
          : verificationCheckTimeoutSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationCheckCount: freezed == verificationCheckCount
          ? _value.verificationCheckCount
          : verificationCheckCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateRequestData implements _CreateRequestData {
  const _$_CreateRequestData(
      {@JsonKey(name: 'RequestId') this.requestId,
      @JsonKey(name: 'ExpireTime') this.expireTime,
      @JsonKey(name: 'VerificationCheckTimeoutSeconds')
      this.verificationCheckTimeoutSeconds,
      @JsonKey(name: 'VerificationCheckCount') this.verificationCheckCount});

  factory _$_CreateRequestData.fromJson(Map<String, dynamic> json) =>
      _$$_CreateRequestDataFromJson(json);

  @override
  @JsonKey(name: 'RequestId')
  final String? requestId;
  @override
  @JsonKey(name: 'ExpireTime')
  final String? expireTime;
  @override
  @JsonKey(name: 'VerificationCheckTimeoutSeconds')
  final int? verificationCheckTimeoutSeconds;
  @override
  @JsonKey(name: 'VerificationCheckCount')
  final int? verificationCheckCount;

  @override
  String toString() {
    return 'CreateRequestData(requestId: $requestId, expireTime: $expireTime, verificationCheckTimeoutSeconds: $verificationCheckTimeoutSeconds, verificationCheckCount: $verificationCheckCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateRequestData &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime) &&
            (identical(other.verificationCheckTimeoutSeconds,
                    verificationCheckTimeoutSeconds) ||
                other.verificationCheckTimeoutSeconds ==
                    verificationCheckTimeoutSeconds) &&
            (identical(other.verificationCheckCount, verificationCheckCount) ||
                other.verificationCheckCount == verificationCheckCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, expireTime,
      verificationCheckTimeoutSeconds, verificationCheckCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateRequestDataCopyWith<_$_CreateRequestData> get copyWith =>
      __$$_CreateRequestDataCopyWithImpl<_$_CreateRequestData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateRequestDataToJson(
      this,
    );
  }
}

abstract class _CreateRequestData implements CreateRequestData {
  const factory _CreateRequestData(
      {@JsonKey(name: 'RequestId') final String? requestId,
      @JsonKey(name: 'ExpireTime') final String? expireTime,
      @JsonKey(name: 'VerificationCheckTimeoutSeconds')
      final int? verificationCheckTimeoutSeconds,
      @JsonKey(name: 'VerificationCheckCount')
      final int? verificationCheckCount}) = _$_CreateRequestData;

  factory _CreateRequestData.fromJson(Map<String, dynamic> json) =
      _$_CreateRequestData.fromJson;

  @override
  @JsonKey(name: 'RequestId')
  String? get requestId;
  @override
  @JsonKey(name: 'ExpireTime')
  String? get expireTime;
  @override
  @JsonKey(name: 'VerificationCheckTimeoutSeconds')
  int? get verificationCheckTimeoutSeconds;
  @override
  @JsonKey(name: 'VerificationCheckCount')
  int? get verificationCheckCount;
  @override
  @JsonKey(ignore: true)
  _$$_CreateRequestDataCopyWith<_$_CreateRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}
