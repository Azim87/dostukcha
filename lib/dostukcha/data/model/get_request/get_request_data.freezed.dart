// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetRequestData _$GetRequestDataFromJson(Map<String, dynamic> json) {
  return _GetRequestData.fromJson(json);
}

/// @nodoc
mixin _$GetRequestData {
  @JsonKey(name: 'RequestId')
  String? get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpireTime')
  String? get expireTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClientId')
  int? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreditSum')
  double? get creditSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'DaysCount')
  int? get daysCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'Source')
  int? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'RequestState')
  int? get requestState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRequestDataCopyWith<GetRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRequestDataCopyWith<$Res> {
  factory $GetRequestDataCopyWith(
          GetRequestData value, $Res Function(GetRequestData) then) =
      _$GetRequestDataCopyWithImpl<$Res, GetRequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'RequestId') String? requestId,
      @JsonKey(name: 'ExpireTime') String? expireTime,
      @JsonKey(name: 'ClientId') int? clientId,
      @JsonKey(name: 'CreditSum') double? creditSum,
      @JsonKey(name: 'DaysCount') int? daysCount,
      @JsonKey(name: 'Source') int? source,
      @JsonKey(name: 'RequestState') int? requestState});
}

/// @nodoc
class _$GetRequestDataCopyWithImpl<$Res, $Val extends GetRequestData>
    implements $GetRequestDataCopyWith<$Res> {
  _$GetRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? expireTime = freezed,
    Object? clientId = freezed,
    Object? creditSum = freezed,
    Object? daysCount = freezed,
    Object? source = freezed,
    Object? requestState = freezed,
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
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      creditSum: freezed == creditSum
          ? _value.creditSum
          : creditSum // ignore: cast_nullable_to_non_nullable
              as double?,
      daysCount: freezed == daysCount
          ? _value.daysCount
          : daysCount // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int?,
      requestState: freezed == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetRequestDataCopyWith<$Res>
    implements $GetRequestDataCopyWith<$Res> {
  factory _$$_GetRequestDataCopyWith(
          _$_GetRequestData value, $Res Function(_$_GetRequestData) then) =
      __$$_GetRequestDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'RequestId') String? requestId,
      @JsonKey(name: 'ExpireTime') String? expireTime,
      @JsonKey(name: 'ClientId') int? clientId,
      @JsonKey(name: 'CreditSum') double? creditSum,
      @JsonKey(name: 'DaysCount') int? daysCount,
      @JsonKey(name: 'Source') int? source,
      @JsonKey(name: 'RequestState') int? requestState});
}

/// @nodoc
class __$$_GetRequestDataCopyWithImpl<$Res>
    extends _$GetRequestDataCopyWithImpl<$Res, _$_GetRequestData>
    implements _$$_GetRequestDataCopyWith<$Res> {
  __$$_GetRequestDataCopyWithImpl(
      _$_GetRequestData _value, $Res Function(_$_GetRequestData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? expireTime = freezed,
    Object? clientId = freezed,
    Object? creditSum = freezed,
    Object? daysCount = freezed,
    Object? source = freezed,
    Object? requestState = freezed,
  }) {
    return _then(_$_GetRequestData(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      creditSum: freezed == creditSum
          ? _value.creditSum
          : creditSum // ignore: cast_nullable_to_non_nullable
              as double?,
      daysCount: freezed == daysCount
          ? _value.daysCount
          : daysCount // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int?,
      requestState: freezed == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetRequestData implements _GetRequestData {
  const _$_GetRequestData(
      {@JsonKey(name: 'RequestId') this.requestId,
      @JsonKey(name: 'ExpireTime') this.expireTime,
      @JsonKey(name: 'ClientId') this.clientId,
      @JsonKey(name: 'CreditSum') this.creditSum,
      @JsonKey(name: 'DaysCount') this.daysCount,
      @JsonKey(name: 'Source') this.source,
      @JsonKey(name: 'RequestState') this.requestState});

  factory _$_GetRequestData.fromJson(Map<String, dynamic> json) =>
      _$$_GetRequestDataFromJson(json);

  @override
  @JsonKey(name: 'RequestId')
  final String? requestId;
  @override
  @JsonKey(name: 'ExpireTime')
  final String? expireTime;
  @override
  @JsonKey(name: 'ClientId')
  final int? clientId;
  @override
  @JsonKey(name: 'CreditSum')
  final double? creditSum;
  @override
  @JsonKey(name: 'DaysCount')
  final int? daysCount;
  @override
  @JsonKey(name: 'Source')
  final int? source;
  @override
  @JsonKey(name: 'RequestState')
  final int? requestState;

  @override
  String toString() {
    return 'GetRequestData(requestId: $requestId, expireTime: $expireTime, clientId: $clientId, creditSum: $creditSum, daysCount: $daysCount, source: $source, requestState: $requestState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRequestData &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.creditSum, creditSum) ||
                other.creditSum == creditSum) &&
            (identical(other.daysCount, daysCount) ||
                other.daysCount == daysCount) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, expireTime, clientId,
      creditSum, daysCount, source, requestState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRequestDataCopyWith<_$_GetRequestData> get copyWith =>
      __$$_GetRequestDataCopyWithImpl<_$_GetRequestData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetRequestDataToJson(
      this,
    );
  }
}

abstract class _GetRequestData implements GetRequestData {
  const factory _GetRequestData(
          {@JsonKey(name: 'RequestId') final String? requestId,
          @JsonKey(name: 'ExpireTime') final String? expireTime,
          @JsonKey(name: 'ClientId') final int? clientId,
          @JsonKey(name: 'CreditSum') final double? creditSum,
          @JsonKey(name: 'DaysCount') final int? daysCount,
          @JsonKey(name: 'Source') final int? source,
          @JsonKey(name: 'RequestState') final int? requestState}) =
      _$_GetRequestData;

  factory _GetRequestData.fromJson(Map<String, dynamic> json) =
      _$_GetRequestData.fromJson;

  @override
  @JsonKey(name: 'RequestId')
  String? get requestId;
  @override
  @JsonKey(name: 'ExpireTime')
  String? get expireTime;
  @override
  @JsonKey(name: 'ClientId')
  int? get clientId;
  @override
  @JsonKey(name: 'CreditSum')
  double? get creditSum;
  @override
  @JsonKey(name: 'DaysCount')
  int? get daysCount;
  @override
  @JsonKey(name: 'Source')
  int? get source;
  @override
  @JsonKey(name: 'RequestState')
  int? get requestState;
  @override
  @JsonKey(ignore: true)
  _$$_GetRequestDataCopyWith<_$_GetRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}
