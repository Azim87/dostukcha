// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operator_answer_settings_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperatorAnswerSettingsData _$OperatorAnswerSettingsDataFromJson(
    Map<String, dynamic> json) {
  return _OperatorAnswerSettingsData.fromJson(json);
}

/// @nodoc
mixin _$OperatorAnswerSettingsData {
  @JsonKey(name: 'VerificationCheckTimeoutSeconds')
  int? get verificationCheckTimeoutSeconds =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'VerificationCheckCount')
  int? get verificationCheckCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperatorAnswerSettingsDataCopyWith<OperatorAnswerSettingsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperatorAnswerSettingsDataCopyWith<$Res> {
  factory $OperatorAnswerSettingsDataCopyWith(OperatorAnswerSettingsData value,
          $Res Function(OperatorAnswerSettingsData) then) =
      _$OperatorAnswerSettingsDataCopyWithImpl<$Res,
          OperatorAnswerSettingsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'VerificationCheckTimeoutSeconds')
      int? verificationCheckTimeoutSeconds,
      @JsonKey(name: 'VerificationCheckCount') int? verificationCheckCount});
}

/// @nodoc
class _$OperatorAnswerSettingsDataCopyWithImpl<$Res,
        $Val extends OperatorAnswerSettingsData>
    implements $OperatorAnswerSettingsDataCopyWith<$Res> {
  _$OperatorAnswerSettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationCheckTimeoutSeconds = freezed,
    Object? verificationCheckCount = freezed,
  }) {
    return _then(_value.copyWith(
      verificationCheckTimeoutSeconds: freezed ==
              verificationCheckTimeoutSeconds
          ? _value.verificationCheckTimeoutSeconds
          : verificationCheckTimeoutSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationCheckCount: freezed == verificationCheckCount
          ? _value.verificationCheckCount
          : verificationCheckCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OperatorAnswerSettingsDataCopyWith<$Res>
    implements $OperatorAnswerSettingsDataCopyWith<$Res> {
  factory _$$_OperatorAnswerSettingsDataCopyWith(
          _$_OperatorAnswerSettingsData value,
          $Res Function(_$_OperatorAnswerSettingsData) then) =
      __$$_OperatorAnswerSettingsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'VerificationCheckTimeoutSeconds')
      int? verificationCheckTimeoutSeconds,
      @JsonKey(name: 'VerificationCheckCount') int? verificationCheckCount});
}

/// @nodoc
class __$$_OperatorAnswerSettingsDataCopyWithImpl<$Res>
    extends _$OperatorAnswerSettingsDataCopyWithImpl<$Res,
        _$_OperatorAnswerSettingsData>
    implements _$$_OperatorAnswerSettingsDataCopyWith<$Res> {
  __$$_OperatorAnswerSettingsDataCopyWithImpl(
      _$_OperatorAnswerSettingsData _value,
      $Res Function(_$_OperatorAnswerSettingsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationCheckTimeoutSeconds = freezed,
    Object? verificationCheckCount = freezed,
  }) {
    return _then(_$_OperatorAnswerSettingsData(
      verificationCheckTimeoutSeconds: freezed ==
              verificationCheckTimeoutSeconds
          ? _value.verificationCheckTimeoutSeconds
          : verificationCheckTimeoutSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationCheckCount: freezed == verificationCheckCount
          ? _value.verificationCheckCount
          : verificationCheckCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OperatorAnswerSettingsData implements _OperatorAnswerSettingsData {
  const _$_OperatorAnswerSettingsData(
      {@JsonKey(name: 'VerificationCheckTimeoutSeconds')
      this.verificationCheckTimeoutSeconds,
      @JsonKey(name: 'VerificationCheckCount') this.verificationCheckCount});

  factory _$_OperatorAnswerSettingsData.fromJson(Map<String, dynamic> json) =>
      _$$_OperatorAnswerSettingsDataFromJson(json);

  @override
  @JsonKey(name: 'VerificationCheckTimeoutSeconds')
  final int? verificationCheckTimeoutSeconds;
  @override
  @JsonKey(name: 'VerificationCheckCount')
  final int? verificationCheckCount;

  @override
  String toString() {
    return 'OperatorAnswerSettingsData(verificationCheckTimeoutSeconds: $verificationCheckTimeoutSeconds, verificationCheckCount: $verificationCheckCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OperatorAnswerSettingsData &&
            (identical(other.verificationCheckTimeoutSeconds,
                    verificationCheckTimeoutSeconds) ||
                other.verificationCheckTimeoutSeconds ==
                    verificationCheckTimeoutSeconds) &&
            (identical(other.verificationCheckCount, verificationCheckCount) ||
                other.verificationCheckCount == verificationCheckCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, verificationCheckTimeoutSeconds, verificationCheckCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperatorAnswerSettingsDataCopyWith<_$_OperatorAnswerSettingsData>
      get copyWith => __$$_OperatorAnswerSettingsDataCopyWithImpl<
          _$_OperatorAnswerSettingsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperatorAnswerSettingsDataToJson(
      this,
    );
  }
}

abstract class _OperatorAnswerSettingsData
    implements OperatorAnswerSettingsData {
  const factory _OperatorAnswerSettingsData(
      {@JsonKey(name: 'VerificationCheckTimeoutSeconds')
      final int? verificationCheckTimeoutSeconds,
      @JsonKey(name: 'VerificationCheckCount')
      final int? verificationCheckCount}) = _$_OperatorAnswerSettingsData;

  factory _OperatorAnswerSettingsData.fromJson(Map<String, dynamic> json) =
      _$_OperatorAnswerSettingsData.fromJson;

  @override
  @JsonKey(name: 'VerificationCheckTimeoutSeconds')
  int? get verificationCheckTimeoutSeconds;
  @override
  @JsonKey(name: 'VerificationCheckCount')
  int? get verificationCheckCount;
  @override
  @JsonKey(ignore: true)
  _$$_OperatorAnswerSettingsDataCopyWith<_$_OperatorAnswerSettingsData>
      get copyWith => throw _privateConstructorUsedError;
}
