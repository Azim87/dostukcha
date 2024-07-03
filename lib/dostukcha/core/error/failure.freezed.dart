// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() connectionFailure,
    required TResult Function(String? err) dioFailure,
    required TResult Function(String? error) baseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? connectionFailure,
    TResult? Function(String? err)? dioFailure,
    TResult? Function(String? error)? baseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? connectionFailure,
    TResult Function(String? err)? dioFailure,
    TResult Function(String? error)? baseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_DioFailure value) dioFailure,
    required TResult Function(_BaseError value) baseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_DioFailure value)? dioFailure,
    TResult? Function(_BaseError value)? baseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_DioFailure value)? dioFailure,
    TResult Function(_BaseError value)? baseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerFailureCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ServerFailure>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure();

  @override
  String toString() {
    return 'Failure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() connectionFailure,
    required TResult Function(String? err) dioFailure,
    required TResult Function(String? error) baseError,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? connectionFailure,
    TResult? Function(String? err)? dioFailure,
    TResult? Function(String? error)? baseError,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? connectionFailure,
    TResult Function(String? err)? dioFailure,
    TResult Function(String? error)? baseError,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_DioFailure value) dioFailure,
    required TResult Function(_BaseError value) baseError,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_DioFailure value)? dioFailure,
    TResult? Function(_BaseError value)? baseError,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_DioFailure value)? dioFailure,
    TResult Function(_BaseError value)? baseError,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failure {
  const factory _ServerFailure() = _$_ServerFailure;
}

/// @nodoc
abstract class _$$_CacheFailureCopyWith<$Res> {
  factory _$$_CacheFailureCopyWith(
          _$_CacheFailure value, $Res Function(_$_CacheFailure) then) =
      __$$_CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CacheFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_CacheFailure>
    implements _$$_CacheFailureCopyWith<$Res> {
  __$$_CacheFailureCopyWithImpl(
      _$_CacheFailure _value, $Res Function(_$_CacheFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CacheFailure implements _CacheFailure {
  const _$_CacheFailure();

  @override
  String toString() {
    return 'Failure.cacheFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() connectionFailure,
    required TResult Function(String? err) dioFailure,
    required TResult Function(String? error) baseError,
  }) {
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? connectionFailure,
    TResult? Function(String? err)? dioFailure,
    TResult? Function(String? error)? baseError,
  }) {
    return cacheFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? connectionFailure,
    TResult Function(String? err)? dioFailure,
    TResult Function(String? error)? baseError,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_DioFailure value) dioFailure,
    required TResult Function(_BaseError value) baseError,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_DioFailure value)? dioFailure,
    TResult? Function(_BaseError value)? baseError,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_DioFailure value)? dioFailure,
    TResult Function(_BaseError value)? baseError,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class _CacheFailure implements Failure {
  const factory _CacheFailure() = _$_CacheFailure;
}

/// @nodoc
abstract class _$$_ConnectionFailureCopyWith<$Res> {
  factory _$$_ConnectionFailureCopyWith(_$_ConnectionFailure value,
          $Res Function(_$_ConnectionFailure) then) =
      __$$_ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectionFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ConnectionFailure>
    implements _$$_ConnectionFailureCopyWith<$Res> {
  __$$_ConnectionFailureCopyWithImpl(
      _$_ConnectionFailure _value, $Res Function(_$_ConnectionFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConnectionFailure implements _ConnectionFailure {
  const _$_ConnectionFailure();

  @override
  String toString() {
    return 'Failure.connectionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() connectionFailure,
    required TResult Function(String? err) dioFailure,
    required TResult Function(String? error) baseError,
  }) {
    return connectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? connectionFailure,
    TResult? Function(String? err)? dioFailure,
    TResult? Function(String? error)? baseError,
  }) {
    return connectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? connectionFailure,
    TResult Function(String? err)? dioFailure,
    TResult Function(String? error)? baseError,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_DioFailure value) dioFailure,
    required TResult Function(_BaseError value) baseError,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_DioFailure value)? dioFailure,
    TResult? Function(_BaseError value)? baseError,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_DioFailure value)? dioFailure,
    TResult Function(_BaseError value)? baseError,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class _ConnectionFailure implements Failure {
  const factory _ConnectionFailure() = _$_ConnectionFailure;
}

/// @nodoc
abstract class _$$_DioFailureCopyWith<$Res> {
  factory _$$_DioFailureCopyWith(
          _$_DioFailure value, $Res Function(_$_DioFailure) then) =
      __$$_DioFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? err});
}

/// @nodoc
class __$$_DioFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_DioFailure>
    implements _$$_DioFailureCopyWith<$Res> {
  __$$_DioFailureCopyWithImpl(
      _$_DioFailure _value, $Res Function(_$_DioFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$_DioFailure(
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DioFailure implements _DioFailure {
  const _$_DioFailure({this.err});

  @override
  final String? err;

  @override
  String toString() {
    return 'Failure.dioFailure(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DioFailure &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DioFailureCopyWith<_$_DioFailure> get copyWith =>
      __$$_DioFailureCopyWithImpl<_$_DioFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() connectionFailure,
    required TResult Function(String? err) dioFailure,
    required TResult Function(String? error) baseError,
  }) {
    return dioFailure(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? connectionFailure,
    TResult? Function(String? err)? dioFailure,
    TResult? Function(String? error)? baseError,
  }) {
    return dioFailure?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? connectionFailure,
    TResult Function(String? err)? dioFailure,
    TResult Function(String? error)? baseError,
    required TResult orElse(),
  }) {
    if (dioFailure != null) {
      return dioFailure(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_DioFailure value) dioFailure,
    required TResult Function(_BaseError value) baseError,
  }) {
    return dioFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_DioFailure value)? dioFailure,
    TResult? Function(_BaseError value)? baseError,
  }) {
    return dioFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_DioFailure value)? dioFailure,
    TResult Function(_BaseError value)? baseError,
    required TResult orElse(),
  }) {
    if (dioFailure != null) {
      return dioFailure(this);
    }
    return orElse();
  }
}

abstract class _DioFailure implements Failure {
  const factory _DioFailure({final String? err}) = _$_DioFailure;

  String? get err;
  @JsonKey(ignore: true)
  _$$_DioFailureCopyWith<_$_DioFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BaseErrorCopyWith<$Res> {
  factory _$$_BaseErrorCopyWith(
          _$_BaseError value, $Res Function(_$_BaseError) then) =
      __$$_BaseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_BaseErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_BaseError>
    implements _$$_BaseErrorCopyWith<$Res> {
  __$$_BaseErrorCopyWithImpl(
      _$_BaseError _value, $Res Function(_$_BaseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_BaseError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BaseError implements _BaseError {
  const _$_BaseError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'Failure.baseError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseErrorCopyWith<_$_BaseError> get copyWith =>
      __$$_BaseErrorCopyWithImpl<_$_BaseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() connectionFailure,
    required TResult Function(String? err) dioFailure,
    required TResult Function(String? error) baseError,
  }) {
    return baseError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? connectionFailure,
    TResult? Function(String? err)? dioFailure,
    TResult? Function(String? error)? baseError,
  }) {
    return baseError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? connectionFailure,
    TResult Function(String? err)? dioFailure,
    TResult Function(String? error)? baseError,
    required TResult orElse(),
  }) {
    if (baseError != null) {
      return baseError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_DioFailure value) dioFailure,
    required TResult Function(_BaseError value) baseError,
  }) {
    return baseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_DioFailure value)? dioFailure,
    TResult? Function(_BaseError value)? baseError,
  }) {
    return baseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_DioFailure value)? dioFailure,
    TResult Function(_BaseError value)? baseError,
    required TResult orElse(),
  }) {
    if (baseError != null) {
      return baseError(this);
    }
    return orElse();
  }
}

abstract class _BaseError implements Failure {
  const factory _BaseError({final String? error}) = _$_BaseError;

  String? get error;
  @JsonKey(ignore: true)
  _$$_BaseErrorCopyWith<_$_BaseError> get copyWith =>
      throw _privateConstructorUsedError;
}
