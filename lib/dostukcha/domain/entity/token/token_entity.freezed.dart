// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TokenEntity {
  @JsonKey(name: 'Data')
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'ErrorCode')
  int? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Success')
  bool? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenEntityCopyWith<TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenEntityCopyWith<$Res> {
  factory $TokenEntityCopyWith(
          TokenEntity value, $Res Function(TokenEntity) then) =
      _$TokenEntityCopyWithImpl<$Res, TokenEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') Data? data,
      @JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Success') bool? success});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TokenEntityCopyWithImpl<$Res, $Val extends TokenEntity>
    implements $TokenEntityCopyWith<$Res> {
  _$TokenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TokenEntityCopyWith<$Res>
    implements $TokenEntityCopyWith<$Res> {
  factory _$$_TokenEntityCopyWith(
          _$_TokenEntity value, $Res Function(_$_TokenEntity) then) =
      __$$_TokenEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') Data? data,
      @JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Success') bool? success});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_TokenEntityCopyWithImpl<$Res>
    extends _$TokenEntityCopyWithImpl<$Res, _$_TokenEntity>
    implements _$$_TokenEntityCopyWith<$Res> {
  __$$_TokenEntityCopyWithImpl(
      _$_TokenEntity _value, $Res Function(_$_TokenEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_TokenEntity(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_TokenEntity implements _TokenEntity {
  const _$_TokenEntity(
      {@JsonKey(name: 'Data') this.data,
      @JsonKey(name: 'ErrorCode') this.errorCode,
      @JsonKey(name: 'Message') this.message,
      @JsonKey(name: 'Success') this.success});

  @override
  @JsonKey(name: 'Data')
  final Data? data;
  @override
  @JsonKey(name: 'ErrorCode')
  final int? errorCode;
  @override
  @JsonKey(name: 'Message')
  final String? message;
  @override
  @JsonKey(name: 'Success')
  final bool? success;

  @override
  String toString() {
    return 'TokenEntity(data: $data, errorCode: $errorCode, message: $message, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenEntity &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, errorCode, message, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenEntityCopyWith<_$_TokenEntity> get copyWith =>
      __$$_TokenEntityCopyWithImpl<_$_TokenEntity>(this, _$identity);
}

abstract class _TokenEntity implements TokenEntity {
  const factory _TokenEntity(
      {@JsonKey(name: 'Data') final Data? data,
      @JsonKey(name: 'ErrorCode') final int? errorCode,
      @JsonKey(name: 'Message') final String? message,
      @JsonKey(name: 'Success') final bool? success}) = _$_TokenEntity;

  @override
  @JsonKey(name: 'Data')
  Data? get data;
  @override
  @JsonKey(name: 'ErrorCode')
  int? get errorCode;
  @override
  @JsonKey(name: 'Message')
  String? get message;
  @override
  @JsonKey(name: 'Success')
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$$_TokenEntityCopyWith<_$_TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
