// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_scan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PassportScanState {
  bool get loading => throw _privateConstructorUsedError;
  bool get reTake => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  PassportStatus get passportStatus => throw _privateConstructorUsedError;
  int get scanLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PassportScanStateCopyWith<PassportScanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportScanStateCopyWith<$Res> {
  factory $PassportScanStateCopyWith(
          PassportScanState value, $Res Function(PassportScanState) then) =
      _$PassportScanStateCopyWithImpl<$Res, PassportScanState>;
  @useResult
  $Res call(
      {bool loading,
      bool reTake,
      String text,
      PassportStatus passportStatus,
      int scanLength});
}

/// @nodoc
class _$PassportScanStateCopyWithImpl<$Res, $Val extends PassportScanState>
    implements $PassportScanStateCopyWith<$Res> {
  _$PassportScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? reTake = null,
    Object? text = null,
    Object? passportStatus = null,
    Object? scanLength = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      reTake: null == reTake
          ? _value.reTake
          : reTake // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      passportStatus: null == passportStatus
          ? _value.passportStatus
          : passportStatus // ignore: cast_nullable_to_non_nullable
              as PassportStatus,
      scanLength: null == scanLength
          ? _value.scanLength
          : scanLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PassportScanStateCopyWith<$Res>
    implements $PassportScanStateCopyWith<$Res> {
  factory _$$_PassportScanStateCopyWith(_$_PassportScanState value,
          $Res Function(_$_PassportScanState) then) =
      __$$_PassportScanStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool reTake,
      String text,
      PassportStatus passportStatus,
      int scanLength});
}

/// @nodoc
class __$$_PassportScanStateCopyWithImpl<$Res>
    extends _$PassportScanStateCopyWithImpl<$Res, _$_PassportScanState>
    implements _$$_PassportScanStateCopyWith<$Res> {
  __$$_PassportScanStateCopyWithImpl(
      _$_PassportScanState _value, $Res Function(_$_PassportScanState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? reTake = null,
    Object? text = null,
    Object? passportStatus = null,
    Object? scanLength = null,
  }) {
    return _then(_$_PassportScanState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      reTake: null == reTake
          ? _value.reTake
          : reTake // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      passportStatus: null == passportStatus
          ? _value.passportStatus
          : passportStatus // ignore: cast_nullable_to_non_nullable
              as PassportStatus,
      scanLength: null == scanLength
          ? _value.scanLength
          : scanLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PassportScanState implements _PassportScanState {
  const _$_PassportScanState(
      {this.loading = false,
      this.reTake = false,
      this.text = 'Сделать Фото',
      this.passportStatus = PassportStatus.BACK,
      this.scanLength = 0});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool reTake;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final PassportStatus passportStatus;
  @override
  @JsonKey()
  final int scanLength;

  @override
  String toString() {
    return 'PassportScanState(loading: $loading, reTake: $reTake, text: $text, passportStatus: $passportStatus, scanLength: $scanLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportScanState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.reTake, reTake) || other.reTake == reTake) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.passportStatus, passportStatus) ||
                other.passportStatus == passportStatus) &&
            (identical(other.scanLength, scanLength) ||
                other.scanLength == scanLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, reTake, text, passportStatus, scanLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassportScanStateCopyWith<_$_PassportScanState> get copyWith =>
      __$$_PassportScanStateCopyWithImpl<_$_PassportScanState>(
          this, _$identity);
}

abstract class _PassportScanState implements PassportScanState {
  const factory _PassportScanState(
      {final bool loading,
      final bool reTake,
      final String text,
      final PassportStatus passportStatus,
      final int scanLength}) = _$_PassportScanState;

  @override
  bool get loading;
  @override
  bool get reTake;
  @override
  String get text;
  @override
  PassportStatus get passportStatus;
  @override
  int get scanLength;
  @override
  @JsonKey(ignore: true)
  _$$_PassportScanStateCopyWith<_$_PassportScanState> get copyWith =>
      throw _privateConstructorUsedError;
}
