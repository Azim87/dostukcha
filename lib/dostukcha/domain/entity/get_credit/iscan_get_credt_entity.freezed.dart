// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iscan_get_credt_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IsCanGetCreditEntity {
  int? get errorCode => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;
  int? get clientId => throw _privateConstructorUsedError;
  bool? get isOldClient => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsCanGetCreditEntityCopyWith<IsCanGetCreditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsCanGetCreditEntityCopyWith<$Res> {
  factory $IsCanGetCreditEntityCopyWith(IsCanGetCreditEntity value,
          $Res Function(IsCanGetCreditEntity) then) =
      _$IsCanGetCreditEntityCopyWithImpl<$Res, IsCanGetCreditEntity>;
  @useResult
  $Res call(
      {int? errorCode, String? errorText, int? clientId, bool? isOldClient});
}

/// @nodoc
class _$IsCanGetCreditEntityCopyWithImpl<$Res,
        $Val extends IsCanGetCreditEntity>
    implements $IsCanGetCreditEntityCopyWith<$Res> {
  _$IsCanGetCreditEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_IsCanGetCreditEntityCopyWith<$Res>
    implements $IsCanGetCreditEntityCopyWith<$Res> {
  factory _$$_IsCanGetCreditEntityCopyWith(_$_IsCanGetCreditEntity value,
          $Res Function(_$_IsCanGetCreditEntity) then) =
      __$$_IsCanGetCreditEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? errorCode, String? errorText, int? clientId, bool? isOldClient});
}

/// @nodoc
class __$$_IsCanGetCreditEntityCopyWithImpl<$Res>
    extends _$IsCanGetCreditEntityCopyWithImpl<$Res, _$_IsCanGetCreditEntity>
    implements _$$_IsCanGetCreditEntityCopyWith<$Res> {
  __$$_IsCanGetCreditEntityCopyWithImpl(_$_IsCanGetCreditEntity _value,
      $Res Function(_$_IsCanGetCreditEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorText = freezed,
    Object? clientId = freezed,
    Object? isOldClient = freezed,
  }) {
    return _then(_$_IsCanGetCreditEntity(
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

class _$_IsCanGetCreditEntity implements _IsCanGetCreditEntity {
  const _$_IsCanGetCreditEntity(
      {this.errorCode, this.errorText, this.clientId, this.isOldClient});

  @override
  final int? errorCode;
  @override
  final String? errorText;
  @override
  final int? clientId;
  @override
  final bool? isOldClient;

  @override
  String toString() {
    return 'IsCanGetCreditEntity(errorCode: $errorCode, errorText: $errorText, clientId: $clientId, isOldClient: $isOldClient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsCanGetCreditEntity &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.isOldClient, isOldClient) ||
                other.isOldClient == isOldClient));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, errorCode, errorText, clientId, isOldClient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsCanGetCreditEntityCopyWith<_$_IsCanGetCreditEntity> get copyWith =>
      __$$_IsCanGetCreditEntityCopyWithImpl<_$_IsCanGetCreditEntity>(
          this, _$identity);
}

abstract class _IsCanGetCreditEntity implements IsCanGetCreditEntity {
  const factory _IsCanGetCreditEntity(
      {final int? errorCode,
      final String? errorText,
      final int? clientId,
      final bool? isOldClient}) = _$_IsCanGetCreditEntity;

  @override
  int? get errorCode;
  @override
  String? get errorText;
  @override
  int? get clientId;
  @override
  bool? get isOldClient;
  @override
  @JsonKey(ignore: true)
  _$$_IsCanGetCreditEntityCopyWith<_$_IsCanGetCreditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
