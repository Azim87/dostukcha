// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  bool get loading => throw _privateConstructorUsedError;
  ClientProfileData? get clientProfileData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({bool loading, ClientProfileData? clientProfileData});

  $ClientProfileDataCopyWith<$Res>? get clientProfileData;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? clientProfileData = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      clientProfileData: freezed == clientProfileData
          ? _value.clientProfileData
          : clientProfileData // ignore: cast_nullable_to_non_nullable
              as ClientProfileData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientProfileDataCopyWith<$Res>? get clientProfileData {
    if (_value.clientProfileData == null) {
      return null;
    }

    return $ClientProfileDataCopyWith<$Res>(_value.clientProfileData!, (value) {
      return _then(_value.copyWith(clientProfileData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, ClientProfileData? clientProfileData});

  @override
  $ClientProfileDataCopyWith<$Res>? get clientProfileData;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? clientProfileData = freezed,
  }) {
    return _then(_$_Initial(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      clientProfileData: freezed == clientProfileData
          ? _value.clientProfileData
          : clientProfileData // ignore: cast_nullable_to_non_nullable
              as ClientProfileData?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.loading = false, this.clientProfileData});

  @override
  @JsonKey()
  final bool loading;
  @override
  final ClientProfileData? clientProfileData;

  @override
  String toString() {
    return 'ProfileState(loading: $loading, clientProfileData: $clientProfileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.clientProfileData, clientProfileData) ||
                other.clientProfileData == clientProfileData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, clientProfileData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ProfileState {
  const factory _Initial(
      {final bool loading,
      final ClientProfileData? clientProfileData}) = _$_Initial;

  @override
  bool get loading;
  @override
  ClientProfileData? get clientProfileData;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
