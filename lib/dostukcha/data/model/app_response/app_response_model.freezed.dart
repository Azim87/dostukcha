// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppResponseModel<T> _$AppResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _AppResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$AppResponseModel<T> {
  @JsonKey(name: 'Data')
  T? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'ErrorCode')
  int? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Success')
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppResponseModelCopyWith<T, AppResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppResponseModelCopyWith<T, $Res> {
  factory $AppResponseModelCopyWith(
          AppResponseModel<T> value, $Res Function(AppResponseModel<T>) then) =
      _$AppResponseModelCopyWithImpl<T, $Res, AppResponseModel<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') T? data,
      @JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Success') bool? success});
}

/// @nodoc
class _$AppResponseModelCopyWithImpl<T, $Res, $Val extends AppResponseModel<T>>
    implements $AppResponseModelCopyWith<T, $Res> {
  _$AppResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_AppResponseModelCopyWith<T, $Res>
    implements $AppResponseModelCopyWith<T, $Res> {
  factory _$$_AppResponseModelCopyWith(_$_AppResponseModel<T> value,
          $Res Function(_$_AppResponseModel<T>) then) =
      __$$_AppResponseModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') T? data,
      @JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Success') bool? success});
}

/// @nodoc
class __$$_AppResponseModelCopyWithImpl<T, $Res>
    extends _$AppResponseModelCopyWithImpl<T, $Res, _$_AppResponseModel<T>>
    implements _$$_AppResponseModelCopyWith<T, $Res> {
  __$$_AppResponseModelCopyWithImpl(_$_AppResponseModel<T> _value,
      $Res Function(_$_AppResponseModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_AppResponseModel<T>(
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
@JsonSerializable(genericArgumentFactories: true)
class _$_AppResponseModel<T> implements _AppResponseModel<T> {
  const _$_AppResponseModel(
      {@JsonKey(name: 'Data') this.data,
      @JsonKey(name: 'ErrorCode') this.errorCode,
      @JsonKey(name: 'Message') this.message,
      @JsonKey(name: 'Success') this.success});

  factory _$_AppResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_AppResponseModelFromJson(json, fromJsonT);

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
    return 'AppResponseModel<$T>(data: $data, errorCode: $errorCode, message: $message, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppResponseModel<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), errorCode, message, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppResponseModelCopyWith<T, _$_AppResponseModel<T>> get copyWith =>
      __$$_AppResponseModelCopyWithImpl<T, _$_AppResponseModel<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_AppResponseModelToJson<T>(this, toJsonT);
  }
}

abstract class _AppResponseModel<T> implements AppResponseModel<T> {
  const factory _AppResponseModel(
      {@JsonKey(name: 'Data') final T? data,
      @JsonKey(name: 'ErrorCode') final int? errorCode,
      @JsonKey(name: 'Message') final String? message,
      @JsonKey(name: 'Success') final bool? success}) = _$_AppResponseModel<T>;

  factory _AppResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_AppResponseModel<T>.fromJson;

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
  _$$_AppResponseModelCopyWith<T, _$_AppResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
