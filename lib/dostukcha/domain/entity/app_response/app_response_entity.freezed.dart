// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppResponseEntity<T> {
  @JsonKey(name: 'Data')
  T? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'ErrorCode')
  int? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Success')
  bool? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppResponseEntityCopyWith<T, AppResponseEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppResponseEntityCopyWith<T, $Res> {
  factory $AppResponseEntityCopyWith(AppResponseEntity<T> value,
          $Res Function(AppResponseEntity<T>) then) =
      _$AppResponseEntityCopyWithImpl<T, $Res, AppResponseEntity<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') T? data,
      @JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Success') bool? success});
}

/// @nodoc
class _$AppResponseEntityCopyWithImpl<T, $Res,
        $Val extends AppResponseEntity<T>>
    implements $AppResponseEntityCopyWith<T, $Res> {
  _$AppResponseEntityCopyWithImpl(this._value, this._then);

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
              as T?,
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
}

/// @nodoc
abstract class _$$_AppResponseEntityCopyWith<T, $Res>
    implements $AppResponseEntityCopyWith<T, $Res> {
  factory _$$_AppResponseEntityCopyWith(_$_AppResponseEntity<T> value,
          $Res Function(_$_AppResponseEntity<T>) then) =
      __$$_AppResponseEntityCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') T? data,
      @JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Success') bool? success});
}

/// @nodoc
class __$$_AppResponseEntityCopyWithImpl<T, $Res>
    extends _$AppResponseEntityCopyWithImpl<T, $Res, _$_AppResponseEntity<T>>
    implements _$$_AppResponseEntityCopyWith<T, $Res> {
  __$$_AppResponseEntityCopyWithImpl(_$_AppResponseEntity<T> _value,
      $Res Function(_$_AppResponseEntity<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_AppResponseEntity<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
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

class _$_AppResponseEntity<T> implements _AppResponseEntity<T> {
  const _$_AppResponseEntity(
      {@JsonKey(name: 'Data') this.data,
      @JsonKey(name: 'ErrorCode') this.errorCode,
      @JsonKey(name: 'Message') this.message,
      @JsonKey(name: 'Success') this.success});

  @override
  @JsonKey(name: 'Data')
  final T? data;
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
    return 'AppResponseEntity<$T>(data: $data, errorCode: $errorCode, message: $message, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppResponseEntity<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), errorCode, message, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppResponseEntityCopyWith<T, _$_AppResponseEntity<T>> get copyWith =>
      __$$_AppResponseEntityCopyWithImpl<T, _$_AppResponseEntity<T>>(
          this, _$identity);
}

abstract class _AppResponseEntity<T> implements AppResponseEntity<T> {
  const factory _AppResponseEntity(
      {@JsonKey(name: 'Data') final T? data,
      @JsonKey(name: 'ErrorCode') final int? errorCode,
      @JsonKey(name: 'Message') final String? message,
      @JsonKey(name: 'Success') final bool? success}) = _$_AppResponseEntity<T>;

  @override
  @JsonKey(name: 'Data')
  T? get data;
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
  _$$_AppResponseEntityCopyWith<T, _$_AppResponseEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
