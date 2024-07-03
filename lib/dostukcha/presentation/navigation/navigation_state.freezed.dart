// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  int get clientId => throw _privateConstructorUsedError;
  bool get isClientIdExist => throw _privateConstructorUsedError;
  bool get isQrCodeExist => throw _privateConstructorUsedError;
  bool get isActiveCredit => throw _privateConstructorUsedError;
  List<Widget>? get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
  @useResult
  $Res call(
      {int clientId,
      bool isClientIdExist,
      bool isQrCodeExist,
      bool isActiveCredit,
      List<Widget>? pages});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? isClientIdExist = null,
    Object? isQrCodeExist = null,
    Object? isActiveCredit = null,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      isClientIdExist: null == isClientIdExist
          ? _value.isClientIdExist
          : isClientIdExist // ignore: cast_nullable_to_non_nullable
              as bool,
      isQrCodeExist: null == isQrCodeExist
          ? _value.isQrCodeExist
          : isQrCodeExist // ignore: cast_nullable_to_non_nullable
              as bool,
      isActiveCredit: null == isActiveCredit
          ? _value.isActiveCredit
          : isActiveCredit // ignore: cast_nullable_to_non_nullable
              as bool,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_NavigationStateCopyWith(
          _$_NavigationState value, $Res Function(_$_NavigationState) then) =
      __$$_NavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int clientId,
      bool isClientIdExist,
      bool isQrCodeExist,
      bool isActiveCredit,
      List<Widget>? pages});
}

/// @nodoc
class __$$_NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_NavigationState>
    implements _$$_NavigationStateCopyWith<$Res> {
  __$$_NavigationStateCopyWithImpl(
      _$_NavigationState _value, $Res Function(_$_NavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? isClientIdExist = null,
    Object? isQrCodeExist = null,
    Object? isActiveCredit = null,
    Object? pages = freezed,
  }) {
    return _then(_$_NavigationState(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      isClientIdExist: null == isClientIdExist
          ? _value.isClientIdExist
          : isClientIdExist // ignore: cast_nullable_to_non_nullable
              as bool,
      isQrCodeExist: null == isQrCodeExist
          ? _value.isQrCodeExist
          : isQrCodeExist // ignore: cast_nullable_to_non_nullable
              as bool,
      isActiveCredit: null == isActiveCredit
          ? _value.isActiveCredit
          : isActiveCredit // ignore: cast_nullable_to_non_nullable
              as bool,
      pages: freezed == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState(
      {this.clientId = 0,
      this.isClientIdExist = false,
      this.isQrCodeExist = false,
      this.isActiveCredit = false,
      final List<Widget>? pages})
      : _pages = pages;

  @override
  @JsonKey()
  final int clientId;
  @override
  @JsonKey()
  final bool isClientIdExist;
  @override
  @JsonKey()
  final bool isQrCodeExist;
  @override
  @JsonKey()
  final bool isActiveCredit;
  final List<Widget>? _pages;
  @override
  List<Widget>? get pages {
    final value = _pages;
    if (value == null) return null;
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NavigationState(clientId: $clientId, isClientIdExist: $isClientIdExist, isQrCodeExist: $isQrCodeExist, isActiveCredit: $isActiveCredit, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationState &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.isClientIdExist, isClientIdExist) ||
                other.isClientIdExist == isClientIdExist) &&
            (identical(other.isQrCodeExist, isQrCodeExist) ||
                other.isQrCodeExist == isQrCodeExist) &&
            (identical(other.isActiveCredit, isActiveCredit) ||
                other.isActiveCredit == isActiveCredit) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientId,
      isClientIdExist,
      isQrCodeExist,
      isActiveCredit,
      const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      __$$_NavigationStateCopyWithImpl<_$_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {final int clientId,
      final bool isClientIdExist,
      final bool isQrCodeExist,
      final bool isActiveCredit,
      final List<Widget>? pages}) = _$_NavigationState;

  @override
  int get clientId;
  @override
  bool get isClientIdExist;
  @override
  bool get isQrCodeExist;
  @override
  bool get isActiveCredit;
  @override
  List<Widget>? get pages;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
