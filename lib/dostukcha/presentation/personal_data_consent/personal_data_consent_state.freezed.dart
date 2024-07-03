// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_data_consent_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalDataConsentState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isSmsReceived => throw _privateConstructorUsedError;
  bool get showResend => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalDataConsentStateCopyWith<PersonalDataConsentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDataConsentStateCopyWith<$Res> {
  factory $PersonalDataConsentStateCopyWith(PersonalDataConsentState value,
          $Res Function(PersonalDataConsentState) then) =
      _$PersonalDataConsentStateCopyWithImpl<$Res, PersonalDataConsentState>;
  @useResult
  $Res call(
      {bool loading,
      bool isSmsReceived,
      bool showResend,
      String? code,
      String? phoneNumber});
}

/// @nodoc
class _$PersonalDataConsentStateCopyWithImpl<$Res,
        $Val extends PersonalDataConsentState>
    implements $PersonalDataConsentStateCopyWith<$Res> {
  _$PersonalDataConsentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isSmsReceived = null,
    Object? showResend = null,
    Object? code = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSmsReceived: null == isSmsReceived
          ? _value.isSmsReceived
          : isSmsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      showResend: null == showResend
          ? _value.showResend
          : showResend // ignore: cast_nullable_to_non_nullable
              as bool,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalDataConsentStateCopyWith<$Res>
    implements $PersonalDataConsentStateCopyWith<$Res> {
  factory _$$_PersonalDataConsentStateCopyWith(
          _$_PersonalDataConsentState value,
          $Res Function(_$_PersonalDataConsentState) then) =
      __$$_PersonalDataConsentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isSmsReceived,
      bool showResend,
      String? code,
      String? phoneNumber});
}

/// @nodoc
class __$$_PersonalDataConsentStateCopyWithImpl<$Res>
    extends _$PersonalDataConsentStateCopyWithImpl<$Res,
        _$_PersonalDataConsentState>
    implements _$$_PersonalDataConsentStateCopyWith<$Res> {
  __$$_PersonalDataConsentStateCopyWithImpl(_$_PersonalDataConsentState _value,
      $Res Function(_$_PersonalDataConsentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isSmsReceived = null,
    Object? showResend = null,
    Object? code = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_PersonalDataConsentState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSmsReceived: null == isSmsReceived
          ? _value.isSmsReceived
          : isSmsReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      showResend: null == showResend
          ? _value.showResend
          : showResend // ignore: cast_nullable_to_non_nullable
              as bool,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PersonalDataConsentState implements _PersonalDataConsentState {
  const _$_PersonalDataConsentState(
      {this.loading = false,
      this.isSmsReceived = false,
      this.showResend = false,
      this.code,
      this.phoneNumber});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isSmsReceived;
  @override
  @JsonKey()
  final bool showResend;
  @override
  final String? code;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PersonalDataConsentState(loading: $loading, isSmsReceived: $isSmsReceived, showResend: $showResend, code: $code, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalDataConsentState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isSmsReceived, isSmsReceived) ||
                other.isSmsReceived == isSmsReceived) &&
            (identical(other.showResend, showResend) ||
                other.showResend == showResend) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, isSmsReceived, showResend, code, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalDataConsentStateCopyWith<_$_PersonalDataConsentState>
      get copyWith => __$$_PersonalDataConsentStateCopyWithImpl<
          _$_PersonalDataConsentState>(this, _$identity);
}

abstract class _PersonalDataConsentState implements PersonalDataConsentState {
  const factory _PersonalDataConsentState(
      {final bool loading,
      final bool isSmsReceived,
      final bool showResend,
      final String? code,
      final String? phoneNumber}) = _$_PersonalDataConsentState;

  @override
  bool get loading;
  @override
  bool get isSmsReceived;
  @override
  bool get showResend;
  @override
  String? get code;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDataConsentStateCopyWith<_$_PersonalDataConsentState>
      get copyWith => throw _privateConstructorUsedError;
}
