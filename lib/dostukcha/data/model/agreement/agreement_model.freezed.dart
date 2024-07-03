// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agreement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgreementModel _$AgreementModelFromJson(Map<String, dynamic> json) {
  return _AgreementModel.fromJson(json);
}

/// @nodoc
mixin _$AgreementModel {
  @JsonKey(name: 'СonfidentialityPolicyUrl')
  String? get ConfidentialityPolicyUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProcessingAgrementUrl')
  String? get ProcessingAgrementUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementModelCopyWith<AgreementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementModelCopyWith<$Res> {
  factory $AgreementModelCopyWith(
          AgreementModel value, $Res Function(AgreementModel) then) =
      _$AgreementModelCopyWithImpl<$Res, AgreementModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'СonfidentialityPolicyUrl')
      String? ConfidentialityPolicyUrl,
      @JsonKey(name: 'ProcessingAgrementUrl') String? ProcessingAgrementUrl});
}

/// @nodoc
class _$AgreementModelCopyWithImpl<$Res, $Val extends AgreementModel>
    implements $AgreementModelCopyWith<$Res> {
  _$AgreementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ConfidentialityPolicyUrl = freezed,
    Object? ProcessingAgrementUrl = freezed,
  }) {
    return _then(_value.copyWith(
      ConfidentialityPolicyUrl: freezed == ConfidentialityPolicyUrl
          ? _value.ConfidentialityPolicyUrl
          : ConfidentialityPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ProcessingAgrementUrl: freezed == ProcessingAgrementUrl
          ? _value.ProcessingAgrementUrl
          : ProcessingAgrementUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgreementModelCopyWith<$Res>
    implements $AgreementModelCopyWith<$Res> {
  factory _$$_AgreementModelCopyWith(
          _$_AgreementModel value, $Res Function(_$_AgreementModel) then) =
      __$$_AgreementModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'СonfidentialityPolicyUrl')
      String? ConfidentialityPolicyUrl,
      @JsonKey(name: 'ProcessingAgrementUrl') String? ProcessingAgrementUrl});
}

/// @nodoc
class __$$_AgreementModelCopyWithImpl<$Res>
    extends _$AgreementModelCopyWithImpl<$Res, _$_AgreementModel>
    implements _$$_AgreementModelCopyWith<$Res> {
  __$$_AgreementModelCopyWithImpl(
      _$_AgreementModel _value, $Res Function(_$_AgreementModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ConfidentialityPolicyUrl = freezed,
    Object? ProcessingAgrementUrl = freezed,
  }) {
    return _then(_$_AgreementModel(
      ConfidentialityPolicyUrl: freezed == ConfidentialityPolicyUrl
          ? _value.ConfidentialityPolicyUrl
          : ConfidentialityPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ProcessingAgrementUrl: freezed == ProcessingAgrementUrl
          ? _value.ProcessingAgrementUrl
          : ProcessingAgrementUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgreementModel
    with DiagnosticableTreeMixin
    implements _AgreementModel {
  const _$_AgreementModel(
      {@JsonKey(name: 'СonfidentialityPolicyUrl') this.ConfidentialityPolicyUrl,
      @JsonKey(name: 'ProcessingAgrementUrl') this.ProcessingAgrementUrl});

  factory _$_AgreementModel.fromJson(Map<String, dynamic> json) =>
      _$$_AgreementModelFromJson(json);

  @override
  @JsonKey(name: 'СonfidentialityPolicyUrl')
  final String? ConfidentialityPolicyUrl;
  @override
  @JsonKey(name: 'ProcessingAgrementUrl')
  final String? ProcessingAgrementUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AgreementModel(ConfidentialityPolicyUrl: $ConfidentialityPolicyUrl, ProcessingAgrementUrl: $ProcessingAgrementUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AgreementModel'))
      ..add(DiagnosticsProperty(
          'ConfidentialityPolicyUrl', ConfidentialityPolicyUrl))
      ..add(
          DiagnosticsProperty('ProcessingAgrementUrl', ProcessingAgrementUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgreementModel &&
            (identical(
                    other.ConfidentialityPolicyUrl, ConfidentialityPolicyUrl) ||
                other.ConfidentialityPolicyUrl == ConfidentialityPolicyUrl) &&
            (identical(other.ProcessingAgrementUrl, ProcessingAgrementUrl) ||
                other.ProcessingAgrementUrl == ProcessingAgrementUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ConfidentialityPolicyUrl, ProcessingAgrementUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgreementModelCopyWith<_$_AgreementModel> get copyWith =>
      __$$_AgreementModelCopyWithImpl<_$_AgreementModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgreementModelToJson(
      this,
    );
  }
}

abstract class _AgreementModel implements AgreementModel {
  const factory _AgreementModel(
      {@JsonKey(name: 'СonfidentialityPolicyUrl')
      final String? ConfidentialityPolicyUrl,
      @JsonKey(name: 'ProcessingAgrementUrl')
      final String? ProcessingAgrementUrl}) = _$_AgreementModel;

  factory _AgreementModel.fromJson(Map<String, dynamic> json) =
      _$_AgreementModel.fromJson;

  @override
  @JsonKey(name: 'СonfidentialityPolicyUrl')
  String? get ConfidentialityPolicyUrl;
  @override
  @JsonKey(name: 'ProcessingAgrementUrl')
  String? get ProcessingAgrementUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AgreementModelCopyWith<_$_AgreementModel> get copyWith =>
      throw _privateConstructorUsedError;
}
