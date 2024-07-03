// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agreement_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgreementEntity {
  @JsonKey(name: 'ConfidentialityPolicyUrl')
  String? get confidentialityPolicyUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProcessingAgrementUrl')
  String? get processingAgrementUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgreementEntityCopyWith<AgreementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementEntityCopyWith<$Res> {
  factory $AgreementEntityCopyWith(
          AgreementEntity value, $Res Function(AgreementEntity) then) =
      _$AgreementEntityCopyWithImpl<$Res, AgreementEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ConfidentialityPolicyUrl')
      String? confidentialityPolicyUrl,
      @JsonKey(name: 'ProcessingAgrementUrl') String? processingAgrementUrl});
}

/// @nodoc
class _$AgreementEntityCopyWithImpl<$Res, $Val extends AgreementEntity>
    implements $AgreementEntityCopyWith<$Res> {
  _$AgreementEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confidentialityPolicyUrl = freezed,
    Object? processingAgrementUrl = freezed,
  }) {
    return _then(_value.copyWith(
      confidentialityPolicyUrl: freezed == confidentialityPolicyUrl
          ? _value.confidentialityPolicyUrl
          : confidentialityPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      processingAgrementUrl: freezed == processingAgrementUrl
          ? _value.processingAgrementUrl
          : processingAgrementUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgreementEntityCopyWith<$Res>
    implements $AgreementEntityCopyWith<$Res> {
  factory _$$_AgreementEntityCopyWith(
          _$_AgreementEntity value, $Res Function(_$_AgreementEntity) then) =
      __$$_AgreementEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ConfidentialityPolicyUrl')
      String? confidentialityPolicyUrl,
      @JsonKey(name: 'ProcessingAgrementUrl') String? processingAgrementUrl});
}

/// @nodoc
class __$$_AgreementEntityCopyWithImpl<$Res>
    extends _$AgreementEntityCopyWithImpl<$Res, _$_AgreementEntity>
    implements _$$_AgreementEntityCopyWith<$Res> {
  __$$_AgreementEntityCopyWithImpl(
      _$_AgreementEntity _value, $Res Function(_$_AgreementEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confidentialityPolicyUrl = freezed,
    Object? processingAgrementUrl = freezed,
  }) {
    return _then(_$_AgreementEntity(
      confidentialityPolicyUrl: freezed == confidentialityPolicyUrl
          ? _value.confidentialityPolicyUrl
          : confidentialityPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      processingAgrementUrl: freezed == processingAgrementUrl
          ? _value.processingAgrementUrl
          : processingAgrementUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AgreementEntity implements _AgreementEntity {
  const _$_AgreementEntity(
      {@JsonKey(name: 'ConfidentialityPolicyUrl') this.confidentialityPolicyUrl,
      @JsonKey(name: 'ProcessingAgrementUrl') this.processingAgrementUrl});

  @override
  @JsonKey(name: 'ConfidentialityPolicyUrl')
  final String? confidentialityPolicyUrl;
  @override
  @JsonKey(name: 'ProcessingAgrementUrl')
  final String? processingAgrementUrl;

  @override
  String toString() {
    return 'AgreementEntity(confidentialityPolicyUrl: $confidentialityPolicyUrl, processingAgrementUrl: $processingAgrementUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgreementEntity &&
            (identical(
                    other.confidentialityPolicyUrl, confidentialityPolicyUrl) ||
                other.confidentialityPolicyUrl == confidentialityPolicyUrl) &&
            (identical(other.processingAgrementUrl, processingAgrementUrl) ||
                other.processingAgrementUrl == processingAgrementUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, confidentialityPolicyUrl, processingAgrementUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgreementEntityCopyWith<_$_AgreementEntity> get copyWith =>
      __$$_AgreementEntityCopyWithImpl<_$_AgreementEntity>(this, _$identity);
}

abstract class _AgreementEntity implements AgreementEntity {
  const factory _AgreementEntity(
      {@JsonKey(name: 'ConfidentialityPolicyUrl')
      final String? confidentialityPolicyUrl,
      @JsonKey(name: 'ProcessingAgrementUrl')
      final String? processingAgrementUrl}) = _$_AgreementEntity;

  @override
  @JsonKey(name: 'ConfidentialityPolicyUrl')
  String? get confidentialityPolicyUrl;
  @override
  @JsonKey(name: 'ProcessingAgrementUrl')
  String? get processingAgrementUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AgreementEntityCopyWith<_$_AgreementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
