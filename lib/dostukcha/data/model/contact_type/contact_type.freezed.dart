// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactType _$ContactTypeFromJson(Map<String, dynamic> json) {
  return _ContactType.fromJson(json);
}

/// @nodoc
mixin _$ContactType {
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderNum')
  int? get orderNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'BlockNum')
  int? get blockNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactTypeCopyWith<ContactType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactTypeCopyWith<$Res> {
  factory $ContactTypeCopyWith(
          ContactType value, $Res Function(ContactType) then) =
      _$ContactTypeCopyWithImpl<$Res, ContactType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'OrderNum') int? orderNum,
      @JsonKey(name: 'BlockNum') int? blockNum});
}

/// @nodoc
class _$ContactTypeCopyWithImpl<$Res, $Val extends ContactType>
    implements $ContactTypeCopyWith<$Res> {
  _$ContactTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? orderNum = freezed,
    Object? blockNum = freezed,
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
      orderNum: freezed == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int?,
      blockNum: freezed == blockNum
          ? _value.blockNum
          : blockNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactTypeCopyWith<$Res>
    implements $ContactTypeCopyWith<$Res> {
  factory _$$_ContactTypeCopyWith(
          _$_ContactType value, $Res Function(_$_ContactType) then) =
      __$$_ContactTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'OrderNum') int? orderNum,
      @JsonKey(name: 'BlockNum') int? blockNum});
}

/// @nodoc
class __$$_ContactTypeCopyWithImpl<$Res>
    extends _$ContactTypeCopyWithImpl<$Res, _$_ContactType>
    implements _$$_ContactTypeCopyWith<$Res> {
  __$$_ContactTypeCopyWithImpl(
      _$_ContactType _value, $Res Function(_$_ContactType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? orderNum = freezed,
    Object? blockNum = freezed,
  }) {
    return _then(_$_ContactType(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNum: freezed == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int?,
      blockNum: freezed == blockNum
          ? _value.blockNum
          : blockNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactType implements _ContactType {
  const _$_ContactType(
      {@JsonKey(name: 'Id') this.id,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'OrderNum') this.orderNum,
      @JsonKey(name: 'BlockNum') this.blockNum});

  factory _$_ContactType.fromJson(Map<String, dynamic> json) =>
      _$$_ContactTypeFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int? id;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'OrderNum')
  final int? orderNum;
  @override
  @JsonKey(name: 'BlockNum')
  final int? blockNum;

  @override
  String toString() {
    return 'ContactType(id: $id, name: $name, orderNum: $orderNum, blockNum: $blockNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderNum, orderNum) ||
                other.orderNum == orderNum) &&
            (identical(other.blockNum, blockNum) ||
                other.blockNum == blockNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, orderNum, blockNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactTypeCopyWith<_$_ContactType> get copyWith =>
      __$$_ContactTypeCopyWithImpl<_$_ContactType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactTypeToJson(
      this,
    );
  }
}

abstract class _ContactType implements ContactType {
  const factory _ContactType(
      {@JsonKey(name: 'Id') final int? id,
      @JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'OrderNum') final int? orderNum,
      @JsonKey(name: 'BlockNum') final int? blockNum}) = _$_ContactType;

  factory _ContactType.fromJson(Map<String, dynamic> json) =
      _$_ContactType.fromJson;

  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'OrderNum')
  int? get orderNum;
  @override
  @JsonKey(name: 'BlockNum')
  int? get blockNum;
  @override
  @JsonKey(ignore: true)
  _$$_ContactTypeCopyWith<_$_ContactType> get copyWith =>
      throw _privateConstructorUsedError;
}
