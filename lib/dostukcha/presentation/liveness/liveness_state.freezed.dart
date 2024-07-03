// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liveness_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LivenessState {
  bool get loading => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LivenessStateCopyWith<LivenessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivenessStateCopyWith<$Res> {
  factory $LivenessStateCopyWith(
          LivenessState value, $Res Function(LivenessState) then) =
      _$LivenessStateCopyWithImpl<$Res, LivenessState>;
  @useResult
  $Res call({bool loading, File? file});
}

/// @nodoc
class _$LivenessStateCopyWithImpl<$Res, $Val extends LivenessState>
    implements $LivenessStateCopyWith<$Res> {
  _$LivenessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LivenessStateCopyWith<$Res>
    implements $LivenessStateCopyWith<$Res> {
  factory _$$_LivenessStateCopyWith(
          _$_LivenessState value, $Res Function(_$_LivenessState) then) =
      __$$_LivenessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, File? file});
}

/// @nodoc
class __$$_LivenessStateCopyWithImpl<$Res>
    extends _$LivenessStateCopyWithImpl<$Res, _$_LivenessState>
    implements _$$_LivenessStateCopyWith<$Res> {
  __$$_LivenessStateCopyWithImpl(
      _$_LivenessState _value, $Res Function(_$_LivenessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? file = freezed,
  }) {
    return _then(_$_LivenessState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_LivenessState implements _LivenessState {
  const _$_LivenessState({this.loading = false, this.file});

  @override
  @JsonKey()
  final bool loading;
  @override
  final File? file;

  @override
  String toString() {
    return 'LivenessState(loading: $loading, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LivenessState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LivenessStateCopyWith<_$_LivenessState> get copyWith =>
      __$$_LivenessStateCopyWithImpl<_$_LivenessState>(this, _$identity);
}

abstract class _LivenessState implements LivenessState {
  const factory _LivenessState({final bool loading, final File? file}) =
      _$_LivenessState;

  @override
  bool get loading;
  @override
  File? get file;
  @override
  @JsonKey(ignore: true)
  _$$_LivenessStateCopyWith<_$_LivenessState> get copyWith =>
      throw _privateConstructorUsedError;
}