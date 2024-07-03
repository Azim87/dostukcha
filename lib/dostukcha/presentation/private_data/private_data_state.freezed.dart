// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrivateDataState {
  bool get loading => throw _privateConstructorUsedError;
  String? get privateDataUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivateDataStateCopyWith<PrivateDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateDataStateCopyWith<$Res> {
  factory $PrivateDataStateCopyWith(
          PrivateDataState value, $Res Function(PrivateDataState) then) =
      _$PrivateDataStateCopyWithImpl<$Res, PrivateDataState>;
  @useResult
  $Res call({bool loading, String? privateDataUrl});
}

/// @nodoc
class _$PrivateDataStateCopyWithImpl<$Res, $Val extends PrivateDataState>
    implements $PrivateDataStateCopyWith<$Res> {
  _$PrivateDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? privateDataUrl = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      privateDataUrl: freezed == privateDataUrl
          ? _value.privateDataUrl
          : privateDataUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrivateDataStateCopyWith<$Res>
    implements $PrivateDataStateCopyWith<$Res> {
  factory _$$_PrivateDataStateCopyWith(
          _$_PrivateDataState value, $Res Function(_$_PrivateDataState) then) =
      __$$_PrivateDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String? privateDataUrl});
}

/// @nodoc
class __$$_PrivateDataStateCopyWithImpl<$Res>
    extends _$PrivateDataStateCopyWithImpl<$Res, _$_PrivateDataState>
    implements _$$_PrivateDataStateCopyWith<$Res> {
  __$$_PrivateDataStateCopyWithImpl(
      _$_PrivateDataState _value, $Res Function(_$_PrivateDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? privateDataUrl = freezed,
  }) {
    return _then(_$_PrivateDataState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      privateDataUrl: freezed == privateDataUrl
          ? _value.privateDataUrl
          : privateDataUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PrivateDataState implements _PrivateDataState {
  const _$_PrivateDataState({this.loading = false, this.privateDataUrl});

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? privateDataUrl;

  @override
  String toString() {
    return 'PrivateDataState(loading: $loading, privateDataUrl: $privateDataUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateDataState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.privateDataUrl, privateDataUrl) ||
                other.privateDataUrl == privateDataUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, privateDataUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivateDataStateCopyWith<_$_PrivateDataState> get copyWith =>
      __$$_PrivateDataStateCopyWithImpl<_$_PrivateDataState>(this, _$identity);
}

abstract class _PrivateDataState implements PrivateDataState {
  const factory _PrivateDataState(
      {final bool loading, final String? privateDataUrl}) = _$_PrivateDataState;

  @override
  bool get loading;
  @override
  String? get privateDataUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PrivateDataStateCopyWith<_$_PrivateDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
