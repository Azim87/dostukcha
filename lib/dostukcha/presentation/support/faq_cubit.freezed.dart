// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FaqState {
  bool get language => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqStateCopyWith<FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) then) =
      _$FaqStateCopyWithImpl<$Res, FaqState>;
  @useResult
  $Res call({bool language, String? url});
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res, $Val extends FaqState>
    implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as bool,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FaqStateCopyWith<$Res> implements $FaqStateCopyWith<$Res> {
  factory _$$_FaqStateCopyWith(
          _$_FaqState value, $Res Function(_$_FaqState) then) =
      __$$_FaqStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool language, String? url});
}

/// @nodoc
class __$$_FaqStateCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$_FaqState>
    implements _$$_FaqStateCopyWith<$Res> {
  __$$_FaqStateCopyWithImpl(
      _$_FaqState _value, $Res Function(_$_FaqState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? url = freezed,
  }) {
    return _then(_$_FaqState(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as bool,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FaqState implements _FaqState {
  const _$_FaqState({this.language = false, this.url});

  @override
  @JsonKey()
  final bool language;
  @override
  final String? url;

  @override
  String toString() {
    return 'FaqState(language: $language, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaqState &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaqStateCopyWith<_$_FaqState> get copyWith =>
      __$$_FaqStateCopyWithImpl<_$_FaqState>(this, _$identity);
}

abstract class _FaqState implements FaqState {
  const factory _FaqState({final bool language, final String? url}) =
      _$_FaqState;

  @override
  bool get language;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_FaqStateCopyWith<_$_FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}
