// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iscan_get_credt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IsCanGetCreditModel _$IsCanGetCreditModelFromJson(Map<String, dynamic> json) {
  return _IsCanGetCreditModel.fromJson(json);
}

/// @nodoc
mixin _$IsCanGetCreditModel {
  @JsonKey(name: 'ErrorCode')
  int? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ErrorText')
  String? get errorText => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClientID')
  int? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsOldClient')
  bool? get isOldClient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsCanGetCreditModelCopyWith<IsCanGetCreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsCanGetCreditModelCopyWith<$Res> {
  factory $IsCanGetCreditModelCopyWith(
          IsCanGetCreditModel value, $Res Function(IsCanGetCreditModel) then) =
      _$IsCanGetCreditModelCopyWithImpl<$Res, IsCanGetCreditModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'ErrorText') String? errorText,
      @JsonKey(name: 'ClientID') int? clientId,
      @JsonKey(name: 'IsOldClient') bool? isOldClient});
}

/// @nodoc
class _$IsCanGetCreditModelCopyWithImpl<$Res, $Val extends IsCanGetCreditModel>
    implements $IsCanGetCreditModelCopyWith<$Res> {
  _$IsCanGetCreditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorText = freezed,
    Object? clientId = freezed,
    Object? isOldClient = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      isOldClient: freezed == isOldClient
          ? _value.isOldClient
          : isOldClient // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IsCanGetCreditModelCopyWith<$Res>
    implements $IsCanGetCreditModelCopyWith<$Res> {
  factory _$$_IsCanGetCreditModelCopyWith(_$_IsCanGetCreditModel value,
          $Res Function(_$_IsCanGetCreditModel) then) =
      __$$_IsCanGetCreditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ErrorCode') int? errorCode,
      @JsonKey(name: 'ErrorText') String? errorText,
      @JsonKey(name: 'ClientID') int? clientId,
      @JsonKey(name: 'IsOldClient') bool? isOldClient});
}

/// @nodoc
class __$$_IsCanGetCreditModelCopyWithImpl<$Res>
    extends _$IsCanGetCreditModelCopyWithImpl<$Res, _$_IsCanGetCreditModel>
    implements _$$_IsCanGetCreditModelCopyWith<$Res> {
  __$$_IsCanGetCreditModelCopyWithImpl(_$_IsCanGetCreditModel _value,
      $Res Function(_$_IsCanGetCreditModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorText = freezed,
    Object? clientId = freezed,
    Object? isOldClient = freezed,
  }) {
    return _then(_$_IsCanGetCreditModel(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      isOldClient: freezed == isOldClient
          ? _value.isOldClient
          : isOldClient // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IsCanGetCreditModel implements _IsCanGetCreditModel {
  const _$_IsCanGetCreditModel(
      {@JsonKey(name: 'ErrorCode') this.errorCode,
      @JsonKey(name: 'ErrorText') this.errorText,
      @JsonKey(name: 'ClientID') this.clientId,
      @JsonKey(name: 'IsOldClient') this.isOldClient});

  factory _$_IsCanGetCreditModel.fromJson(Map<String, dynamic> json) =>
      _$$_IsCanGetCreditModelFromJson(json);

  @override
  @JsonKey(name: 'ErrorCode')
  final int? errorCode;
  @override
  @JsonKey(name: 'ErrorText')
  final String? errorText;
  @override
  @JsonKey(name: 'ClientID')
  final int? clientId;
  @override
  @JsonKey(name: 'IsOldClient')
  final bool? isOldClient;

  @override
  String toString() {
    return 'IsCanGetCreditModel(errorCode: $errorCode, errorText: $errorText, clientId: $clientId, isOldClient: $isOldClient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsCanGetCreditModel &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.isOldClient, isOldClient) ||
                other.isOldClient == isOldClient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, errorCode, errorText, clientId, isOldClient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsCanGetCreditModelCopyWith<_$_IsCanGetCreditModel> get copyWith =>
      __$$_IsCanGetCreditModelCopyWithImpl<_$_IsCanGetCreditModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IsCanGetCreditModelToJson(
      this,
    );
  }
}

abstract class _IsCanGetCreditModel implements IsCanGetCreditModel {
  const factory _IsCanGetCreditModel(
          {@JsonKey(name: 'ErrorCode') final int? errorCode,
          @JsonKey(name: 'ErrorText') final String? errorText,
          @JsonKey(name: 'ClientID') final int? clientId,
          @JsonKey(name: 'IsOldClient') final bool? isOldClient}) =
      _$_IsCanGetCreditModel;

  factory _IsCanGetCreditModel.fromJson(Map<String, dynamic> json) =
      _$_IsCanGetCreditModel.fromJson;

  @override
  @JsonKey(name: 'ErrorCode')
  int? get errorCode;
  @override
  @JsonKey(name: 'ErrorText')
  String? get errorText;
  @override
  @JsonKey(name: 'ClientID')
  int? get clientId;
  @override
  @JsonKey(name: 'IsOldClient')
  bool? get isOldClient;
  @override
  @JsonKey(ignore: true)
  _$$_IsCanGetCreditModelCopyWith<_$_IsCanGetCreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}
