// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_credit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCreditEntity _$RequestCreditEntityFromJson(Map<String, dynamic> json) {
  return _RequestCreditEntity.fromJson(json);
}

/// @nodoc
mixin _$RequestCreditEntity {
  double? get maxAmount => throw _privateConstructorUsedError;
  String? get qr => throw _privateConstructorUsedError;
  bool? get approved => throw _privateConstructorUsedError;
  int? get partnerId => throw _privateConstructorUsedError;
  String? get partnerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCreditEntityCopyWith<RequestCreditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCreditEntityCopyWith<$Res> {
  factory $RequestCreditEntityCopyWith(
          RequestCreditEntity value, $Res Function(RequestCreditEntity) then) =
      _$RequestCreditEntityCopyWithImpl<$Res, RequestCreditEntity>;
  @useResult
  $Res call(
      {double? maxAmount,
      String? qr,
      bool? approved,
      int? partnerId,
      String? partnerName});
}

/// @nodoc
class _$RequestCreditEntityCopyWithImpl<$Res, $Val extends RequestCreditEntity>
    implements $RequestCreditEntityCopyWith<$Res> {
  _$RequestCreditEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxAmount = freezed,
    Object? qr = freezed,
    Object? approved = freezed,
    Object? partnerId = freezed,
    Object? partnerName = freezed,
  }) {
    return _then(_value.copyWith(
      maxAmount: freezed == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      qr: freezed == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool?,
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerName: freezed == partnerName
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestCreditEntityCopyWith<$Res>
    implements $RequestCreditEntityCopyWith<$Res> {
  factory _$$_RequestCreditEntityCopyWith(_$_RequestCreditEntity value,
          $Res Function(_$_RequestCreditEntity) then) =
      __$$_RequestCreditEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? maxAmount,
      String? qr,
      bool? approved,
      int? partnerId,
      String? partnerName});
}

/// @nodoc
class __$$_RequestCreditEntityCopyWithImpl<$Res>
    extends _$RequestCreditEntityCopyWithImpl<$Res, _$_RequestCreditEntity>
    implements _$$_RequestCreditEntityCopyWith<$Res> {
  __$$_RequestCreditEntityCopyWithImpl(_$_RequestCreditEntity _value,
      $Res Function(_$_RequestCreditEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxAmount = freezed,
    Object? qr = freezed,
    Object? approved = freezed,
    Object? partnerId = freezed,
    Object? partnerName = freezed,
  }) {
    return _then(_$_RequestCreditEntity(
      maxAmount: freezed == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      qr: freezed == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool?,
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerName: freezed == partnerName
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestCreditEntity implements _RequestCreditEntity {
  const _$_RequestCreditEntity(
      {this.maxAmount,
      this.qr,
      this.approved,
      this.partnerId,
      this.partnerName});

  factory _$_RequestCreditEntity.fromJson(Map<String, dynamic> json) =>
      _$$_RequestCreditEntityFromJson(json);

  @override
  final double? maxAmount;
  @override
  final String? qr;
  @override
  final bool? approved;
  @override
  final int? partnerId;
  @override
  final String? partnerName;

  @override
  String toString() {
    return 'RequestCreditEntity(maxAmount: $maxAmount, qr: $qr, approved: $approved, partnerId: $partnerId, partnerName: $partnerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCreditEntity &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.qr, qr) || other.qr == qr) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.partnerName, partnerName) ||
                other.partnerName == partnerName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxAmount, qr, approved, partnerId, partnerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestCreditEntityCopyWith<_$_RequestCreditEntity> get copyWith =>
      __$$_RequestCreditEntityCopyWithImpl<_$_RequestCreditEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestCreditEntityToJson(
      this,
    );
  }
}

abstract class _RequestCreditEntity implements RequestCreditEntity {
  const factory _RequestCreditEntity(
      {final double? maxAmount,
      final String? qr,
      final bool? approved,
      final int? partnerId,
      final String? partnerName}) = _$_RequestCreditEntity;

  factory _RequestCreditEntity.fromJson(Map<String, dynamic> json) =
      _$_RequestCreditEntity.fromJson;

  @override
  double? get maxAmount;
  @override
  String? get qr;
  @override
  bool? get approved;
  @override
  int? get partnerId;
  @override
  String? get partnerName;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCreditEntityCopyWith<_$_RequestCreditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
