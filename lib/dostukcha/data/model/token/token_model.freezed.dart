// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) {
  return _TokenModel.fromJson(json);
}

/// @nodoc
mixin _$TokenModel {
  @JsonKey(name: 'Data')
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'ErrorCode')
  int? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Success')
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenModelCopyWith<TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenModelCopyWith<$Res> {
  factory $TokenModelCopyWith(
          TokenModel value, $Res Function(TokenModel) then) =
      _$TokenModelCopyWithImpl<$Res, TokenModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') Data? data,
      @JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Success') bool? success});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TokenModelCopyWithImpl<$Res, $Val extends TokenModel>
    implements $TokenModelCopyWith<$Res> {
  _$TokenModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_TokenModelCopyWith<$Res>
    implements $TokenModelCopyWith<$Res> {
  factory _$$_TokenModelCopyWith(
          _$_TokenModel value, $Res Function(_$_TokenModel) then) =
      __$$_TokenModelCopyWithImpl<$Res>;
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
class __$$_TokenModelCopyWithImpl<$Res>
    extends _$TokenModelCopyWithImpl<$Res, _$_TokenModel>
    implements _$$_TokenModelCopyWith<$Res> {
  __$$_TokenModelCopyWithImpl(
      _$_TokenModel _value, $Res Function(_$_TokenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_TokenModel(
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
@JsonSerializable()
class _$_TokenModel implements _TokenModel {
  const _$_TokenModel(
      {@JsonKey(name: 'Data') this.data,
      @JsonKey(name: 'ErrorCode') this.errorCode,
      @JsonKey(name: 'Message') this.message,
      @JsonKey(name: 'Success') this.success});

  factory _$_TokenModel.fromJson(Map<String, dynamic> json) =>
      _$$_TokenModelFromJson(json);

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
    return 'TokenModel(data: $data, errorCode: $errorCode, message: $message, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, data, errorCode, message, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenModelCopyWith<_$_TokenModel> get copyWith =>
      __$$_TokenModelCopyWithImpl<_$_TokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenModelToJson(
      this,
    );
  }
}

abstract class _TokenModel implements TokenModel {
  const factory _TokenModel(
      {@JsonKey(name: 'Data') final Data? data,
      @JsonKey(name: 'ErrorCode') final int? errorCode,
      @JsonKey(name: 'Message') final String? message,
      @JsonKey(name: 'Success') final bool? success}) = _$_TokenModel;

  factory _TokenModel.fromJson(Map<String, dynamic> json) =
      _$_TokenModel.fromJson;

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
  _$$_TokenModelCopyWith<_$_TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get ClientId => throw _privateConstructorUsedError;
  String? get Token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({int? ClientId, String? Token});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ClientId = freezed,
    Object? Token = freezed,
  }) {
    return _then(_value.copyWith(
      ClientId: freezed == ClientId
          ? _value.ClientId
          : ClientId // ignore: cast_nullable_to_non_nullable
              as int?,
      Token: freezed == Token
          ? _value.Token
          : Token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? ClientId, String? Token});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ClientId = freezed,
    Object? Token = freezed,
  }) {
    return _then(_$_Data(
      ClientId: freezed == ClientId
          ? _value.ClientId
          : ClientId // ignore: cast_nullable_to_non_nullable
              as int?,
      Token: freezed == Token
          ? _value.Token
          : Token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.ClientId, this.Token});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? ClientId;
  @override
  final String? Token;

  @override
  String toString() {
    return 'Data(ClientId: $ClientId, Token: $Token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.ClientId, ClientId) ||
                other.ClientId == ClientId) &&
            (identical(other.Token, Token) || other.Token == Token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ClientId, Token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final int? ClientId, final String? Token}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get ClientId;
  @override
  String? get Token;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
