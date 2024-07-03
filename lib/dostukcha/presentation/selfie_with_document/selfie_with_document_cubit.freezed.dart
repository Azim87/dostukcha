// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selfie_with_document_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelfieWithDocumentState {
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelfieWithDocumentStateCopyWith<SelfieWithDocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfieWithDocumentStateCopyWith<$Res> {
  factory $SelfieWithDocumentStateCopyWith(SelfieWithDocumentState value,
          $Res Function(SelfieWithDocumentState) then) =
      _$SelfieWithDocumentStateCopyWithImpl<$Res, SelfieWithDocumentState>;
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class _$SelfieWithDocumentStateCopyWithImpl<$Res,
        $Val extends SelfieWithDocumentState>
    implements $SelfieWithDocumentStateCopyWith<$Res> {
  _$SelfieWithDocumentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelfieWithDocumentStateCopyWith<$Res>
    implements $SelfieWithDocumentStateCopyWith<$Res> {
  factory _$$_SelfieWithDocumentStateCopyWith(_$_SelfieWithDocumentState value,
          $Res Function(_$_SelfieWithDocumentState) then) =
      __$$_SelfieWithDocumentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class __$$_SelfieWithDocumentStateCopyWithImpl<$Res>
    extends _$SelfieWithDocumentStateCopyWithImpl<$Res,
        _$_SelfieWithDocumentState>
    implements _$$_SelfieWithDocumentStateCopyWith<$Res> {
  __$$_SelfieWithDocumentStateCopyWithImpl(_$_SelfieWithDocumentState _value,
      $Res Function(_$_SelfieWithDocumentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_$_SelfieWithDocumentState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelfieWithDocumentState implements _SelfieWithDocumentState {
  const _$_SelfieWithDocumentState({this.loading = false});

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'SelfieWithDocumentState(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelfieWithDocumentState &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelfieWithDocumentStateCopyWith<_$_SelfieWithDocumentState>
      get copyWith =>
          __$$_SelfieWithDocumentStateCopyWithImpl<_$_SelfieWithDocumentState>(
              this, _$identity);
}

abstract class _SelfieWithDocumentState implements SelfieWithDocumentState {
  const factory _SelfieWithDocumentState({final bool loading}) =
      _$_SelfieWithDocumentState;

  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_SelfieWithDocumentStateCopyWith<_$_SelfieWithDocumentState>
      get copyWith => throw _privateConstructorUsedError;
}
