// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mediapicker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediapickerState {
  bool get granted => throw _privateConstructorUsedError;
  bool get permanentlyDenied => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediapickerStateCopyWith<MediapickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediapickerStateCopyWith<$Res> {
  factory $MediapickerStateCopyWith(
          MediapickerState value, $Res Function(MediapickerState) then) =
      _$MediapickerStateCopyWithImpl<$Res, MediapickerState>;
  @useResult
  $Res call({bool granted, bool permanentlyDenied});
}

/// @nodoc
class _$MediapickerStateCopyWithImpl<$Res, $Val extends MediapickerState>
    implements $MediapickerStateCopyWith<$Res> {
  _$MediapickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? granted = null,
    Object? permanentlyDenied = null,
  }) {
    return _then(_value.copyWith(
      granted: null == granted
          ? _value.granted
          : granted // ignore: cast_nullable_to_non_nullable
              as bool,
      permanentlyDenied: null == permanentlyDenied
          ? _value.permanentlyDenied
          : permanentlyDenied // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediapickerStateCopyWith<$Res>
    implements $MediapickerStateCopyWith<$Res> {
  factory _$$_MediapickerStateCopyWith(
          _$_MediapickerState value, $Res Function(_$_MediapickerState) then) =
      __$$_MediapickerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool granted, bool permanentlyDenied});
}

/// @nodoc
class __$$_MediapickerStateCopyWithImpl<$Res>
    extends _$MediapickerStateCopyWithImpl<$Res, _$_MediapickerState>
    implements _$$_MediapickerStateCopyWith<$Res> {
  __$$_MediapickerStateCopyWithImpl(
      _$_MediapickerState _value, $Res Function(_$_MediapickerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? granted = null,
    Object? permanentlyDenied = null,
  }) {
    return _then(_$_MediapickerState(
      granted: null == granted
          ? _value.granted
          : granted // ignore: cast_nullable_to_non_nullable
              as bool,
      permanentlyDenied: null == permanentlyDenied
          ? _value.permanentlyDenied
          : permanentlyDenied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MediapickerState implements _MediapickerState {
  const _$_MediapickerState(
      {this.granted = false, this.permanentlyDenied = false});

  @override
  @JsonKey()
  final bool granted;
  @override
  @JsonKey()
  final bool permanentlyDenied;

  @override
  String toString() {
    return 'MediapickerState(granted: $granted, permanentlyDenied: $permanentlyDenied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediapickerState &&
            (identical(other.granted, granted) || other.granted == granted) &&
            (identical(other.permanentlyDenied, permanentlyDenied) ||
                other.permanentlyDenied == permanentlyDenied));
  }

  @override
  int get hashCode => Object.hash(runtimeType, granted, permanentlyDenied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediapickerStateCopyWith<_$_MediapickerState> get copyWith =>
      __$$_MediapickerStateCopyWithImpl<_$_MediapickerState>(this, _$identity);
}

abstract class _MediapickerState implements MediapickerState {
  const factory _MediapickerState(
      {final bool granted, final bool permanentlyDenied}) = _$_MediapickerState;

  @override
  bool get granted;
  @override
  bool get permanentlyDenied;
  @override
  @JsonKey(ignore: true)
  _$$_MediapickerStateCopyWith<_$_MediapickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
