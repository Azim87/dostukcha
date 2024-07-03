// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'processing_partners_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProcessingPartnersModel _$ProcessingPartnersModelFromJson(
    Map<String, dynamic> json) {
  return _ProcessingPartnersModel.fromJson(json);
}

/// @nodoc
mixin _$ProcessingPartnersModel {
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Logo')
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessingPartnersModelCopyWith<ProcessingPartnersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessingPartnersModelCopyWith<$Res> {
  factory $ProcessingPartnersModelCopyWith(ProcessingPartnersModel value,
          $Res Function(ProcessingPartnersModel) then) =
      _$ProcessingPartnersModelCopyWithImpl<$Res, ProcessingPartnersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Logo') String? logo});
}

/// @nodoc
class _$ProcessingPartnersModelCopyWithImpl<$Res,
        $Val extends ProcessingPartnersModel>
    implements $ProcessingPartnersModelCopyWith<$Res> {
  _$ProcessingPartnersModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProcessingPartnersModelCopyWith<$Res>
    implements $ProcessingPartnersModelCopyWith<$Res> {
  factory _$$_ProcessingPartnersModelCopyWith(_$_ProcessingPartnersModel value,
          $Res Function(_$_ProcessingPartnersModel) then) =
      __$$_ProcessingPartnersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Logo') String? logo});
}

/// @nodoc
class __$$_ProcessingPartnersModelCopyWithImpl<$Res>
    extends _$ProcessingPartnersModelCopyWithImpl<$Res,
        _$_ProcessingPartnersModel>
    implements _$$_ProcessingPartnersModelCopyWith<$Res> {
  __$$_ProcessingPartnersModelCopyWithImpl(_$_ProcessingPartnersModel _value,
      $Res Function(_$_ProcessingPartnersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_ProcessingPartnersModel(
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
@JsonSerializable()
class _$_ProcessingPartnersModel implements _ProcessingPartnersModel {
  const _$_ProcessingPartnersModel(
      {@JsonKey(name: 'Id') this.id,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'Logo') this.logo});

  factory _$_ProcessingPartnersModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProcessingPartnersModelFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int? id;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'Logo')
  final String? logo;

  @override
  String toString() {
    return 'ProcessingPartnersModel(id: $id, name: $name, description: $description, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcessingPartnersModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcessingPartnersModelCopyWith<_$_ProcessingPartnersModel>
      get copyWith =>
          __$$_ProcessingPartnersModelCopyWithImpl<_$_ProcessingPartnersModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcessingPartnersModelToJson(
      this,
    );
  }
}

abstract class _ProcessingPartnersModel implements ProcessingPartnersModel {
  const factory _ProcessingPartnersModel(
      {@JsonKey(name: 'Id') final int? id,
      @JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'Logo') final String? logo}) = _$_ProcessingPartnersModel;

  factory _ProcessingPartnersModel.fromJson(Map<String, dynamic> json) =
      _$_ProcessingPartnersModel.fromJson;

  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'Logo')
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessingPartnersModelCopyWith<_$_ProcessingPartnersModel>
      get copyWith => throw _privateConstructorUsedError;
}
