// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preliminary_check_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreliminaryCheckState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isDeclined => throw _privateConstructorUsedError;
  bool get scanError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreliminaryCheckStateCopyWith<PreliminaryCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreliminaryCheckStateCopyWith<$Res> {
  factory $PreliminaryCheckStateCopyWith(PreliminaryCheckState value,
          $Res Function(PreliminaryCheckState) then) =
      _$PreliminaryCheckStateCopyWithImpl<$Res, PreliminaryCheckState>;
  @useResult
  $Res call({bool loading, bool isDeclined, bool scanError});
}

/// @nodoc
class _$PreliminaryCheckStateCopyWithImpl<$Res,
        $Val extends PreliminaryCheckState>
    implements $PreliminaryCheckStateCopyWith<$Res> {
  _$PreliminaryCheckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isDeclined = null,
    Object? scanError = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeclined: null == isDeclined
          ? _value.isDeclined
          : isDeclined // ignore: cast_nullable_to_non_nullable
              as bool,
      scanError: null == scanError
          ? _value.scanError
          : scanError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreliminaryCheckStateCopyWith<$Res>
    implements $PreliminaryCheckStateCopyWith<$Res> {
  factory _$$_PreliminaryCheckStateCopyWith(_$_PreliminaryCheckState value,
          $Res Function(_$_PreliminaryCheckState) then) =
      __$$_PreliminaryCheckStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool isDeclined, bool scanError});
}

/// @nodoc
class __$$_PreliminaryCheckStateCopyWithImpl<$Res>
    extends _$PreliminaryCheckStateCopyWithImpl<$Res, _$_PreliminaryCheckState>
    implements _$$_PreliminaryCheckStateCopyWith<$Res> {
  __$$_PreliminaryCheckStateCopyWithImpl(_$_PreliminaryCheckState _value,
      $Res Function(_$_PreliminaryCheckState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isDeclined = null,
    Object? scanError = null,
  }) {
    return _then(_$_PreliminaryCheckState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeclined: null == isDeclined
          ? _value.isDeclined
          : isDeclined // ignore: cast_nullable_to_non_nullable
              as bool,
      scanError: null == scanError
          ? _value.scanError
          : scanError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PreliminaryCheckState implements _PreliminaryCheckState {
  const _$_PreliminaryCheckState(
      {this.loading = false, this.isDeclined = false, this.scanError = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isDeclined;
  @override
  @JsonKey()
  final bool scanError;

  @override
  String toString() {
    return 'PreliminaryCheckState(loading: $loading, isDeclined: $isDeclined, scanError: $scanError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreliminaryCheckState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isDeclined, isDeclined) ||
                other.isDeclined == isDeclined) &&
            (identical(other.scanError, scanError) ||
                other.scanError == scanError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, isDeclined, scanError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreliminaryCheckStateCopyWith<_$_PreliminaryCheckState> get copyWith =>
      __$$_PreliminaryCheckStateCopyWithImpl<_$_PreliminaryCheckState>(
          this, _$identity);
}

abstract class _PreliminaryCheckState implements PreliminaryCheckState {
  const factory _PreliminaryCheckState(
      {final bool loading,
      final bool isDeclined,
      final bool scanError}) = _$_PreliminaryCheckState;

  @override
  bool get loading;
  @override
  bool get isDeclined;
  @override
  bool get scanError;
  @override
  @JsonKey(ignore: true)
  _$$_PreliminaryCheckStateCopyWith<_$_PreliminaryCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}
