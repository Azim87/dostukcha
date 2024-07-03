// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoanContractState {
  String? get requestId => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanContractStateCopyWith<LoanContractState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanContractStateCopyWith<$Res> {
  factory $LoanContractStateCopyWith(
          LoanContractState value, $Res Function(LoanContractState) then) =
      _$LoanContractStateCopyWithImpl<$Res, LoanContractState>;
  @useResult
  $Res call({String? requestId, bool loading});
}

/// @nodoc
class _$LoanContractStateCopyWithImpl<$Res, $Val extends LoanContractState>
    implements $LoanContractStateCopyWith<$Res> {
  _$LoanContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoanContractStateCopyWith<$Res>
    implements $LoanContractStateCopyWith<$Res> {
  factory _$$_LoanContractStateCopyWith(_$_LoanContractState value,
          $Res Function(_$_LoanContractState) then) =
      __$$_LoanContractStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? requestId, bool loading});
}

/// @nodoc
class __$$_LoanContractStateCopyWithImpl<$Res>
    extends _$LoanContractStateCopyWithImpl<$Res, _$_LoanContractState>
    implements _$$_LoanContractStateCopyWith<$Res> {
  __$$_LoanContractStateCopyWithImpl(
      _$_LoanContractState _value, $Res Function(_$_LoanContractState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? loading = null,
  }) {
    return _then(_$_LoanContractState(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoanContractState implements _LoanContractState {
  const _$_LoanContractState({this.requestId, this.loading = false});

  @override
  final String? requestId;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'LoanContractState(requestId: $requestId, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoanContractState &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoanContractStateCopyWith<_$_LoanContractState> get copyWith =>
      __$$_LoanContractStateCopyWithImpl<_$_LoanContractState>(
          this, _$identity);
}

abstract class _LoanContractState implements LoanContractState {
  const factory _LoanContractState(
      {final String? requestId, final bool loading}) = _$_LoanContractState;

  @override
  String? get requestId;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_LoanContractStateCopyWith<_$_LoanContractState> get copyWith =>
      throw _privateConstructorUsedError;
}
