// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_can_client_get_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IsCanClientGetState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isCanClientSuccess => throw _privateConstructorUsedError;
  bool get scanError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsCanClientGetStateCopyWith<IsCanClientGetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsCanClientGetStateCopyWith<$Res> {
  factory $IsCanClientGetStateCopyWith(
          IsCanClientGetState value, $Res Function(IsCanClientGetState) then) =
      _$IsCanClientGetStateCopyWithImpl<$Res, IsCanClientGetState>;
  @useResult
  $Res call({bool loading, bool isCanClientSuccess, bool scanError});
}

/// @nodoc
class _$IsCanClientGetStateCopyWithImpl<$Res, $Val extends IsCanClientGetState>
    implements $IsCanClientGetStateCopyWith<$Res> {
  _$IsCanClientGetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isCanClientSuccess = null,
    Object? scanError = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCanClientSuccess: null == isCanClientSuccess
          ? _value.isCanClientSuccess
          : isCanClientSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      scanError: null == scanError
          ? _value.scanError
          : scanError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IsCanClientGetStateCopyWith<$Res>
    implements $IsCanClientGetStateCopyWith<$Res> {
  factory _$$_IsCanClientGetStateCopyWith(_$_IsCanClientGetState value,
          $Res Function(_$_IsCanClientGetState) then) =
      __$$_IsCanClientGetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool isCanClientSuccess, bool scanError});
}

/// @nodoc
class __$$_IsCanClientGetStateCopyWithImpl<$Res>
    extends _$IsCanClientGetStateCopyWithImpl<$Res, _$_IsCanClientGetState>
    implements _$$_IsCanClientGetStateCopyWith<$Res> {
  __$$_IsCanClientGetStateCopyWithImpl(_$_IsCanClientGetState _value,
      $Res Function(_$_IsCanClientGetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isCanClientSuccess = null,
    Object? scanError = null,
  }) {
    return _then(_$_IsCanClientGetState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCanClientSuccess: null == isCanClientSuccess
          ? _value.isCanClientSuccess
          : isCanClientSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      scanError: null == scanError
          ? _value.scanError
          : scanError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsCanClientGetState implements _IsCanClientGetState {
  const _$_IsCanClientGetState(
      {this.loading = false,
      this.isCanClientSuccess = false,
      this.scanError = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isCanClientSuccess;
  @override
  @JsonKey()
  final bool scanError;

  @override
  String toString() {
    return 'IsCanClientGetState(loading: $loading, isCanClientSuccess: $isCanClientSuccess, scanError: $scanError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsCanClientGetState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isCanClientSuccess, isCanClientSuccess) ||
                other.isCanClientSuccess == isCanClientSuccess) &&
            (identical(other.scanError, scanError) ||
                other.scanError == scanError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, isCanClientSuccess, scanError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsCanClientGetStateCopyWith<_$_IsCanClientGetState> get copyWith =>
      __$$_IsCanClientGetStateCopyWithImpl<_$_IsCanClientGetState>(
          this, _$identity);
}

abstract class _IsCanClientGetState implements IsCanClientGetState {
  const factory _IsCanClientGetState(
      {final bool loading,
      final bool isCanClientSuccess,
      final bool scanError}) = _$_IsCanClientGetState;

  @override
  bool get loading;
  @override
  bool get isCanClientSuccess;
  @override
  bool get scanError;
  @override
  @JsonKey(ignore: true)
  _$$_IsCanClientGetStateCopyWith<_$_IsCanClientGetState> get copyWith =>
      throw _privateConstructorUsedError;
}
