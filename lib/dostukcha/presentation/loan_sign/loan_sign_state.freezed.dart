// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_sign_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoanSignState {
  bool get loading => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get smsCode => throw _privateConstructorUsedError;
  String? get requestId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanSignStateCopyWith<LoanSignState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanSignStateCopyWith<$Res> {
  factory $LoanSignStateCopyWith(
          LoanSignState value, $Res Function(LoanSignState) then) =
      _$LoanSignStateCopyWithImpl<$Res, LoanSignState>;
  @useResult
  $Res call(
      {bool loading, String? phoneNumber, String? smsCode, String? requestId});
}

/// @nodoc
class _$LoanSignStateCopyWithImpl<$Res, $Val extends LoanSignState>
    implements $LoanSignStateCopyWith<$Res> {
  _$LoanSignStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: freezed == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoanSignStateCopyWith<$Res>
    implements $LoanSignStateCopyWith<$Res> {
  factory _$$_LoanSignStateCopyWith(
          _$_LoanSignState value, $Res Function(_$_LoanSignState) then) =
      __$$_LoanSignStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, String? phoneNumber, String? smsCode, String? requestId});
}

/// @nodoc
class __$$_LoanSignStateCopyWithImpl<$Res>
    extends _$LoanSignStateCopyWithImpl<$Res, _$_LoanSignState>
    implements _$$_LoanSignStateCopyWith<$Res> {
  __$$_LoanSignStateCopyWithImpl(
      _$_LoanSignState _value, $Res Function(_$_LoanSignState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_$_LoanSignState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: freezed == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoanSignState implements _LoanSignState {
  const _$_LoanSignState(
      {this.loading = false, this.phoneNumber, this.smsCode, this.requestId});

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? phoneNumber;
  @override
  final String? smsCode;
  @override
  final String? requestId;

  @override
  String toString() {
    return 'LoanSignState(loading: $loading, phoneNumber: $phoneNumber, smsCode: $smsCode, requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoanSignState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, phoneNumber, smsCode, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoanSignStateCopyWith<_$_LoanSignState> get copyWith =>
      __$$_LoanSignStateCopyWithImpl<_$_LoanSignState>(this, _$identity);
}

abstract class _LoanSignState implements LoanSignState {
  const factory _LoanSignState(
      {final bool loading,
      final String? phoneNumber,
      final String? smsCode,
      final String? requestId}) = _$_LoanSignState;

  @override
  bool get loading;
  @override
  String? get phoneNumber;
  @override
  String? get smsCode;
  @override
  String? get requestId;
  @override
  @JsonKey(ignore: true)
  _$$_LoanSignStateCopyWith<_$_LoanSignState> get copyWith =>
      throw _privateConstructorUsedError;
}
