// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_policy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrivacyPolicyState {
  bool get loading => throw _privateConstructorUsedError;
  String? get privacyPolicyUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivacyPolicyStateCopyWith<PrivacyPolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyPolicyStateCopyWith<$Res> {
  factory $PrivacyPolicyStateCopyWith(
          PrivacyPolicyState value, $Res Function(PrivacyPolicyState) then) =
      _$PrivacyPolicyStateCopyWithImpl<$Res, PrivacyPolicyState>;
  @useResult
  $Res call({bool loading, String? privacyPolicyUrl});
}

/// @nodoc
class _$PrivacyPolicyStateCopyWithImpl<$Res, $Val extends PrivacyPolicyState>
    implements $PrivacyPolicyStateCopyWith<$Res> {
  _$PrivacyPolicyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? privacyPolicyUrl = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyPolicyUrl: freezed == privacyPolicyUrl
          ? _value.privacyPolicyUrl
          : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrivacyPolicyStateCopyWith<$Res>
    implements $PrivacyPolicyStateCopyWith<$Res> {
  factory _$$_PrivacyPolicyStateCopyWith(_$_PrivacyPolicyState value,
          $Res Function(_$_PrivacyPolicyState) then) =
      __$$_PrivacyPolicyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String? privacyPolicyUrl});
}

/// @nodoc
class __$$_PrivacyPolicyStateCopyWithImpl<$Res>
    extends _$PrivacyPolicyStateCopyWithImpl<$Res, _$_PrivacyPolicyState>
    implements _$$_PrivacyPolicyStateCopyWith<$Res> {
  __$$_PrivacyPolicyStateCopyWithImpl(
      _$_PrivacyPolicyState _value, $Res Function(_$_PrivacyPolicyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? privacyPolicyUrl = freezed,
  }) {
    return _then(_$_PrivacyPolicyState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyPolicyUrl: freezed == privacyPolicyUrl
          ? _value.privacyPolicyUrl
          : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PrivacyPolicyState implements _PrivacyPolicyState {
  const _$_PrivacyPolicyState({this.loading = false, this.privacyPolicyUrl});

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? privacyPolicyUrl;

  @override
  String toString() {
    return 'PrivacyPolicyState(loading: $loading, privacyPolicyUrl: $privacyPolicyUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivacyPolicyState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.privacyPolicyUrl, privacyPolicyUrl) ||
                other.privacyPolicyUrl == privacyPolicyUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, privacyPolicyUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivacyPolicyStateCopyWith<_$_PrivacyPolicyState> get copyWith =>
      __$$_PrivacyPolicyStateCopyWithImpl<_$_PrivacyPolicyState>(
          this, _$identity);
}

abstract class _PrivacyPolicyState implements PrivacyPolicyState {
  const factory _PrivacyPolicyState(
      {final bool loading,
      final String? privacyPolicyUrl}) = _$_PrivacyPolicyState;

  @override
  bool get loading;
  @override
  String? get privacyPolicyUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PrivacyPolicyStateCopyWith<_$_PrivacyPolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}
