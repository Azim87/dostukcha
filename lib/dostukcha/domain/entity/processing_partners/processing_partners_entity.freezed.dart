// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'processing_partners_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProcessingPartnersEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProcessingPartnersEntityCopyWith<ProcessingPartnersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessingPartnersEntityCopyWith<$Res> {
  factory $ProcessingPartnersEntityCopyWith(ProcessingPartnersEntity value,
          $Res Function(ProcessingPartnersEntity) then) =
      _$ProcessingPartnersEntityCopyWithImpl<$Res, ProcessingPartnersEntity>;
  @useResult
  $Res call({int? id, String? name, String? description, String? logo});
}

/// @nodoc
class _$ProcessingPartnersEntityCopyWithImpl<$Res,
        $Val extends ProcessingPartnersEntity>
    implements $ProcessingPartnersEntityCopyWith<$Res> {
  _$ProcessingPartnersEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProcessingPartnersEntityCopyWith<$Res>
    implements $ProcessingPartnersEntityCopyWith<$Res> {
  factory _$$_ProcessingPartnersEntityCopyWith(
          _$_ProcessingPartnersEntity value,
          $Res Function(_$_ProcessingPartnersEntity) then) =
      __$$_ProcessingPartnersEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? description, String? logo});
}

/// @nodoc
class __$$_ProcessingPartnersEntityCopyWithImpl<$Res>
    extends _$ProcessingPartnersEntityCopyWithImpl<$Res,
        _$_ProcessingPartnersEntity>
    implements _$$_ProcessingPartnersEntityCopyWith<$Res> {
  __$$_ProcessingPartnersEntityCopyWithImpl(_$_ProcessingPartnersEntity _value,
      $Res Function(_$_ProcessingPartnersEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_ProcessingPartnersEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProcessingPartnersEntity implements _ProcessingPartnersEntity {
  const _$_ProcessingPartnersEntity(
      {this.id, this.name, this.description, this.logo});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? logo;

  @override
  String toString() {
    return 'ProcessingPartnersEntity(id: $id, name: $name, description: $description, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcessingPartnersEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcessingPartnersEntityCopyWith<_$_ProcessingPartnersEntity>
      get copyWith => __$$_ProcessingPartnersEntityCopyWithImpl<
          _$_ProcessingPartnersEntity>(this, _$identity);
}

abstract class _ProcessingPartnersEntity implements ProcessingPartnersEntity {
  const factory _ProcessingPartnersEntity(
      {final int? id,
      final String? name,
      final String? description,
      final String? logo}) = _$_ProcessingPartnersEntity;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessingPartnersEntityCopyWith<_$_ProcessingPartnersEntity>
      get copyWith => throw _privateConstructorUsedError;
}
