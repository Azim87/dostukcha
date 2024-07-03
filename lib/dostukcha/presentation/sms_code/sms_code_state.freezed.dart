// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmsCodeState {
  bool get loading => throw _privateConstructorUsedError;
  bool get err1 => throw _privateConstructorUsedError;
  bool get err2 => throw _privateConstructorUsedError;
  int get getRequestTryCount => throw _privateConstructorUsedError;
  String? get smsCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmsCodeStateCopyWith<SmsCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsCodeStateCopyWith<$Res> {
  factory $SmsCodeStateCopyWith(
          SmsCodeState value, $Res Function(SmsCodeState) then) =
      _$SmsCodeStateCopyWithImpl<$Res, SmsCodeState>;
  @useResult
  $Res call(
      {bool loading,
      bool err1,
      bool err2,
      int getRequestTryCount,
      String? smsCode});
}

/// @nodoc
class _$SmsCodeStateCopyWithImpl<$Res, $Val extends SmsCodeState>
    implements $SmsCodeStateCopyWith<$Res> {
  _$SmsCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? err1 = null,
    Object? err2 = null,
    Object? getRequestTryCount = null,
    Object? smsCode = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      err1: null == err1
          ? _value.err1
          : err1 // ignore: cast_nullable_to_non_nullable
              as bool,
      err2: null == err2
          ? _value.err2
          : err2 // ignore: cast_nullable_to_non_nullable
              as bool,
      getRequestTryCount: null == getRequestTryCount
          ? _value.getRequestTryCount
          : getRequestTryCount // ignore: cast_nullable_to_non_nullable
              as int,
      smsCode: freezed == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmsCodeStateCopyWith<$Res>
    implements $SmsCodeStateCopyWith<$Res> {
  factory _$$_SmsCodeStateCopyWith(
          _$_SmsCodeState value, $Res Function(_$_SmsCodeState) then) =
      __$$_SmsCodeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool err1,
      bool err2,
      int getRequestTryCount,
      String? smsCode});
}

/// @nodoc
class __$$_SmsCodeStateCopyWithImpl<$Res>
    extends _$SmsCodeStateCopyWithImpl<$Res, _$_SmsCodeState>
    implements _$$_SmsCodeStateCopyWith<$Res> {
  __$$_SmsCodeStateCopyWithImpl(
      _$_SmsCodeState _value, $Res Function(_$_SmsCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? err1 = null,
    Object? err2 = null,
    Object? getRequestTryCount = null,
    Object? smsCode = freezed,
  }) {
    return _then(_$_SmsCodeState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      err1: null == err1
          ? _value.err1
          : err1 // ignore: cast_nullable_to_non_nullable
              as bool,
      err2: null == err2
          ? _value.err2
          : err2 // ignore: cast_nullable_to_non_nullable
              as bool,
      getRequestTryCount: null == getRequestTryCount
          ? _value.getRequestTryCount
          : getRequestTryCount // ignore: cast_nullable_to_non_nullable
              as int,
      smsCode: freezed == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SmsCodeState implements _SmsCodeState {
  const _$_SmsCodeState(
      {this.loading = false,
      this.err1 = false,
      this.err2 = false,
      this.getRequestTryCount = 0,
      this.smsCode});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool err1;
  @override
  @JsonKey()
  final bool err2;
  @override
  @JsonKey()
  final int getRequestTryCount;
  @override
  final String? smsCode;

  @override
  String toString() {
    return 'SmsCodeState(loading: $loading, err1: $err1, err2: $err2, getRequestTryCount: $getRequestTryCount, smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmsCodeState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.err1, err1) || other.err1 == err1) &&
            (identical(other.err2, err2) || other.err2 == err2) &&
            (identical(other.getRequestTryCount, getRequestTryCount) ||
                other.getRequestTryCount == getRequestTryCount) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, err1, err2, getRequestTryCount, smsCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmsCodeStateCopyWith<_$_SmsCodeState> get copyWith =>
      __$$_SmsCodeStateCopyWithImpl<_$_SmsCodeState>(this, _$identity);
}

abstract class _SmsCodeState implements SmsCodeState {
  const factory _SmsCodeState(
      {final bool loading,
      final bool err1,
      final bool err2,
      final int getRequestTryCount,
      final String? smsCode}) = _$_SmsCodeState;

  @override
  bool get loading;
  @override
  bool get err1;
  @override
  bool get err2;
  @override
  int get getRequestTryCount;
  @override
  String? get smsCode;
  @override
  @JsonKey(ignore: true)
  _$$_SmsCodeStateCopyWith<_$_SmsCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
