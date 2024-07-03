// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateRequestState {
  bool get loading => throw _privateConstructorUsedError;
  String? get expiredDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRequestStateCopyWith<CreateRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestStateCopyWith<$Res> {
  factory $CreateRequestStateCopyWith(
          CreateRequestState value, $Res Function(CreateRequestState) then) =
      _$CreateRequestStateCopyWithImpl<$Res, CreateRequestState>;
  @useResult
  $Res call({bool loading, String? expiredDate});
}

/// @nodoc
class _$CreateRequestStateCopyWithImpl<$Res, $Val extends CreateRequestState>
    implements $CreateRequestStateCopyWith<$Res> {
  _$CreateRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? expiredDate = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      expiredDate: freezed == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateRequestStateCopyWith<$Res>
    implements $CreateRequestStateCopyWith<$Res> {
  factory _$$_CreateRequestStateCopyWith(_$_CreateRequestState value,
          $Res Function(_$_CreateRequestState) then) =
      __$$_CreateRequestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String? expiredDate});
}

/// @nodoc
class __$$_CreateRequestStateCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res, _$_CreateRequestState>
    implements _$$_CreateRequestStateCopyWith<$Res> {
  __$$_CreateRequestStateCopyWithImpl(
      _$_CreateRequestState _value, $Res Function(_$_CreateRequestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? expiredDate = freezed,
  }) {
    return _then(_$_CreateRequestState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      expiredDate: freezed == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CreateRequestState implements _CreateRequestState {
  const _$_CreateRequestState({this.loading = false, this.expiredDate});

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? expiredDate;

  @override
  String toString() {
    return 'CreateRequestState(loading: $loading, expiredDate: $expiredDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateRequestState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.expiredDate, expiredDate) ||
                other.expiredDate == expiredDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, expiredDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateRequestStateCopyWith<_$_CreateRequestState> get copyWith =>
      __$$_CreateRequestStateCopyWithImpl<_$_CreateRequestState>(
          this, _$identity);
}

abstract class _CreateRequestState implements CreateRequestState {
  const factory _CreateRequestState(
      {final bool loading, final String? expiredDate}) = _$_CreateRequestState;

  @override
  bool get loading;
  @override
  String? get expiredDate;
  @override
  @JsonKey(ignore: true)
  _$$_CreateRequestStateCopyWith<_$_CreateRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
