// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partners_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PartnersListState {
  bool get loading => throw _privateConstructorUsedError;
  List<ProcessingPartnersEntity> get processingPartnersList =>
      throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartnersListStateCopyWith<PartnersListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnersListStateCopyWith<$Res> {
  factory $PartnersListStateCopyWith(
          PartnersListState value, $Res Function(PartnersListState) then) =
      _$PartnersListStateCopyWithImpl<$Res, PartnersListState>;
  @useResult
  $Res call(
      {bool loading,
      List<ProcessingPartnersEntity> processingPartnersList,
      File? file});
}

/// @nodoc
class _$PartnersListStateCopyWithImpl<$Res, $Val extends PartnersListState>
    implements $PartnersListStateCopyWith<$Res> {
  _$PartnersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? processingPartnersList = null,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      processingPartnersList: null == processingPartnersList
          ? _value.processingPartnersList
          : processingPartnersList // ignore: cast_nullable_to_non_nullable
              as List<ProcessingPartnersEntity>,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartnersListStateCopyWith<$Res>
    implements $PartnersListStateCopyWith<$Res> {
  factory _$$_PartnersListStateCopyWith(_$_PartnersListState value,
          $Res Function(_$_PartnersListState) then) =
      __$$_PartnersListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      List<ProcessingPartnersEntity> processingPartnersList,
      File? file});
}

/// @nodoc
class __$$_PartnersListStateCopyWithImpl<$Res>
    extends _$PartnersListStateCopyWithImpl<$Res, _$_PartnersListState>
    implements _$$_PartnersListStateCopyWith<$Res> {
  __$$_PartnersListStateCopyWithImpl(
      _$_PartnersListState _value, $Res Function(_$_PartnersListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? processingPartnersList = null,
    Object? file = freezed,
  }) {
    return _then(_$_PartnersListState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      processingPartnersList: null == processingPartnersList
          ? _value._processingPartnersList
          : processingPartnersList // ignore: cast_nullable_to_non_nullable
              as List<ProcessingPartnersEntity>,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_PartnersListState implements _PartnersListState {
  const _$_PartnersListState(
      {this.loading = false,
      final List<ProcessingPartnersEntity> processingPartnersList = const [],
      this.file})
      : _processingPartnersList = processingPartnersList;

  @override
  @JsonKey()
  final bool loading;
  final List<ProcessingPartnersEntity> _processingPartnersList;
  @override
  @JsonKey()
  List<ProcessingPartnersEntity> get processingPartnersList {
    if (_processingPartnersList is EqualUnmodifiableListView)
      return _processingPartnersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_processingPartnersList);
  }

  @override
  final File? file;

  @override
  String toString() {
    return 'PartnersListState(loading: $loading, processingPartnersList: $processingPartnersList, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartnersListState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(
                other._processingPartnersList, _processingPartnersList) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_processingPartnersList), file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnersListStateCopyWith<_$_PartnersListState> get copyWith =>
      __$$_PartnersListStateCopyWithImpl<_$_PartnersListState>(
          this, _$identity);
}

abstract class _PartnersListState implements PartnersListState {
  const factory _PartnersListState(
      {final bool loading,
      final List<ProcessingPartnersEntity> processingPartnersList,
      final File? file}) = _$_PartnersListState;

  @override
  bool get loading;
  @override
  List<ProcessingPartnersEntity> get processingPartnersList;
  @override
  File? get file;
  @override
  @JsonKey(ignore: true)
  _$$_PartnersListStateCopyWith<_$_PartnersListState> get copyWith =>
      throw _privateConstructorUsedError;
}
