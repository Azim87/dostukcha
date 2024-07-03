// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_with_loan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileWithLoanState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isDataEmpty => throw _privateConstructorUsedError;
  String get errorText => throw _privateConstructorUsedError;
  GetCreditPayInfoData? get getCreditPayInfoData =>
      throw _privateConstructorUsedError;
  String? get requestId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileWithLoanStateCopyWith<ProfileWithLoanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWithLoanStateCopyWith<$Res> {
  factory $ProfileWithLoanStateCopyWith(ProfileWithLoanState value,
          $Res Function(ProfileWithLoanState) then) =
      _$ProfileWithLoanStateCopyWithImpl<$Res, ProfileWithLoanState>;
  @useResult
  $Res call(
      {bool loading,
      bool isDataEmpty,
      String errorText,
      GetCreditPayInfoData? getCreditPayInfoData,
      String? requestId});

  $GetCreditPayInfoDataCopyWith<$Res>? get getCreditPayInfoData;
}

/// @nodoc
class _$ProfileWithLoanStateCopyWithImpl<$Res,
        $Val extends ProfileWithLoanState>
    implements $ProfileWithLoanStateCopyWith<$Res> {
  _$ProfileWithLoanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isDataEmpty = null,
    Object? errorText = null,
    Object? getCreditPayInfoData = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDataEmpty: null == isDataEmpty
          ? _value.isDataEmpty
          : isDataEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      getCreditPayInfoData: freezed == getCreditPayInfoData
          ? _value.getCreditPayInfoData
          : getCreditPayInfoData // ignore: cast_nullable_to_non_nullable
              as GetCreditPayInfoData?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetCreditPayInfoDataCopyWith<$Res>? get getCreditPayInfoData {
    if (_value.getCreditPayInfoData == null) {
      return null;
    }

    return $GetCreditPayInfoDataCopyWith<$Res>(_value.getCreditPayInfoData!,
        (value) {
      return _then(_value.copyWith(getCreditPayInfoData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileWithLoanStateCopyWith<$Res>
    implements $ProfileWithLoanStateCopyWith<$Res> {
  factory _$$_ProfileWithLoanStateCopyWith(_$_ProfileWithLoanState value,
          $Res Function(_$_ProfileWithLoanState) then) =
      __$$_ProfileWithLoanStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isDataEmpty,
      String errorText,
      GetCreditPayInfoData? getCreditPayInfoData,
      String? requestId});

  @override
  $GetCreditPayInfoDataCopyWith<$Res>? get getCreditPayInfoData;
}

/// @nodoc
class __$$_ProfileWithLoanStateCopyWithImpl<$Res>
    extends _$ProfileWithLoanStateCopyWithImpl<$Res, _$_ProfileWithLoanState>
    implements _$$_ProfileWithLoanStateCopyWith<$Res> {
  __$$_ProfileWithLoanStateCopyWithImpl(_$_ProfileWithLoanState _value,
      $Res Function(_$_ProfileWithLoanState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isDataEmpty = null,
    Object? errorText = null,
    Object? getCreditPayInfoData = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_$_ProfileWithLoanState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDataEmpty: null == isDataEmpty
          ? _value.isDataEmpty
          : isDataEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      getCreditPayInfoData: freezed == getCreditPayInfoData
          ? _value.getCreditPayInfoData
          : getCreditPayInfoData // ignore: cast_nullable_to_non_nullable
              as GetCreditPayInfoData?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProfileWithLoanState implements _ProfileWithLoanState {
  const _$_ProfileWithLoanState(
      {this.loading = false,
      this.isDataEmpty = false,
      this.errorText = '',
      this.getCreditPayInfoData,
      this.requestId});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isDataEmpty;
  @override
  @JsonKey()
  final String errorText;
  @override
  final GetCreditPayInfoData? getCreditPayInfoData;
  @override
  final String? requestId;

  @override
  String toString() {
    return 'ProfileWithLoanState(loading: $loading, isDataEmpty: $isDataEmpty, errorText: $errorText, getCreditPayInfoData: $getCreditPayInfoData, requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileWithLoanState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isDataEmpty, isDataEmpty) ||
                other.isDataEmpty == isDataEmpty) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.getCreditPayInfoData, getCreditPayInfoData) ||
                other.getCreditPayInfoData == getCreditPayInfoData) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, isDataEmpty, errorText,
      getCreditPayInfoData, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileWithLoanStateCopyWith<_$_ProfileWithLoanState> get copyWith =>
      __$$_ProfileWithLoanStateCopyWithImpl<_$_ProfileWithLoanState>(
          this, _$identity);
}

abstract class _ProfileWithLoanState implements ProfileWithLoanState {
  const factory _ProfileWithLoanState(
      {final bool loading,
      final bool isDataEmpty,
      final String errorText,
      final GetCreditPayInfoData? getCreditPayInfoData,
      final String? requestId}) = _$_ProfileWithLoanState;

  @override
  bool get loading;
  @override
  bool get isDataEmpty;
  @override
  String get errorText;
  @override
  GetCreditPayInfoData? get getCreditPayInfoData;
  @override
  String? get requestId;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileWithLoanStateCopyWith<_$_ProfileWithLoanState> get copyWith =>
      throw _privateConstructorUsedError;
}
