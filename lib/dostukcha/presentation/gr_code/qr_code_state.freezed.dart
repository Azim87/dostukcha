// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrCodeState {
  bool get loading => throw _privateConstructorUsedError;
  bool get culture => throw _privateConstructorUsedError;
  String? get qrImagePath => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  RequestCreditEntity? get requestCredit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrCodeStateCopyWith<QrCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeStateCopyWith<$Res> {
  factory $QrCodeStateCopyWith(
          QrCodeState value, $Res Function(QrCodeState) then) =
      _$QrCodeStateCopyWithImpl<$Res, QrCodeState>;
  @useResult
  $Res call(
      {bool loading,
      bool culture,
      String? qrImagePath,
      File? file,
      int index,
      RequestCreditEntity? requestCredit});

  $RequestCreditEntityCopyWith<$Res>? get requestCredit;
}

/// @nodoc
class _$QrCodeStateCopyWithImpl<$Res, $Val extends QrCodeState>
    implements $QrCodeStateCopyWith<$Res> {
  _$QrCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? culture = null,
    Object? qrImagePath = freezed,
    Object? file = freezed,
    Object? index = null,
    Object? requestCredit = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      culture: null == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as bool,
      qrImagePath: freezed == qrImagePath
          ? _value.qrImagePath
          : qrImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      requestCredit: freezed == requestCredit
          ? _value.requestCredit
          : requestCredit // ignore: cast_nullable_to_non_nullable
              as RequestCreditEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestCreditEntityCopyWith<$Res>? get requestCredit {
    if (_value.requestCredit == null) {
      return null;
    }

    return $RequestCreditEntityCopyWith<$Res>(_value.requestCredit!, (value) {
      return _then(_value.copyWith(requestCredit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QrCodeStateCopyWith<$Res>
    implements $QrCodeStateCopyWith<$Res> {
  factory _$$_QrCodeStateCopyWith(
          _$_QrCodeState value, $Res Function(_$_QrCodeState) then) =
      __$$_QrCodeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool culture,
      String? qrImagePath,
      File? file,
      int index,
      RequestCreditEntity? requestCredit});

  @override
  $RequestCreditEntityCopyWith<$Res>? get requestCredit;
}

/// @nodoc
class __$$_QrCodeStateCopyWithImpl<$Res>
    extends _$QrCodeStateCopyWithImpl<$Res, _$_QrCodeState>
    implements _$$_QrCodeStateCopyWith<$Res> {
  __$$_QrCodeStateCopyWithImpl(
      _$_QrCodeState _value, $Res Function(_$_QrCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? culture = null,
    Object? qrImagePath = freezed,
    Object? file = freezed,
    Object? index = null,
    Object? requestCredit = freezed,
  }) {
    return _then(_$_QrCodeState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      culture: null == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as bool,
      qrImagePath: freezed == qrImagePath
          ? _value.qrImagePath
          : qrImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      requestCredit: freezed == requestCredit
          ? _value.requestCredit
          : requestCredit // ignore: cast_nullable_to_non_nullable
              as RequestCreditEntity?,
    ));
  }
}

/// @nodoc

class _$_QrCodeState implements _QrCodeState {
  const _$_QrCodeState(
      {this.loading = false,
      this.culture = false,
      this.qrImagePath,
      this.file,
      this.index = 0,
      this.requestCredit});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool culture;
  @override
  final String? qrImagePath;
  @override
  final File? file;
  @override
  @JsonKey()
  final int index;
  @override
  final RequestCreditEntity? requestCredit;

  @override
  String toString() {
    return 'QrCodeState(loading: $loading, culture: $culture, qrImagePath: $qrImagePath, file: $file, index: $index, requestCredit: $requestCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrCodeState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.culture, culture) || other.culture == culture) &&
            (identical(other.qrImagePath, qrImagePath) ||
                other.qrImagePath == qrImagePath) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.requestCredit, requestCredit) ||
                other.requestCredit == requestCredit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, culture, qrImagePath, file, index, requestCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QrCodeStateCopyWith<_$_QrCodeState> get copyWith =>
      __$$_QrCodeStateCopyWithImpl<_$_QrCodeState>(this, _$identity);
}

abstract class _QrCodeState implements QrCodeState {
  const factory _QrCodeState(
      {final bool loading,
      final bool culture,
      final String? qrImagePath,
      final File? file,
      final int index,
      final RequestCreditEntity? requestCredit}) = _$_QrCodeState;

  @override
  bool get loading;
  @override
  bool get culture;
  @override
  String? get qrImagePath;
  @override
  File? get file;
  @override
  int get index;
  @override
  RequestCreditEntity? get requestCredit;
  @override
  @JsonKey(ignore: true)
  _$$_QrCodeStateCopyWith<_$_QrCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
