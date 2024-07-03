// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_credit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCreditModel _$RequestCreditModelFromJson(Map<String, dynamic> json) {
  return _RequestCreditModel.fromJson(json);
}

/// @nodoc
mixin _$RequestCreditModel {
  @JsonKey(name: 'MaxAmount')
  double? get maxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'QR')
  String? get qr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Approved')
  bool? get approved => throw _privateConstructorUsedError;
  @JsonKey(name: 'PartnerId')
  int? get partnerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PartnerName')
  String? get partnerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCreditModelCopyWith<RequestCreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCreditModelCopyWith<$Res> {
  factory $RequestCreditModelCopyWith(
          RequestCreditModel value, $Res Function(RequestCreditModel) then) =
      _$RequestCreditModelCopyWithImpl<$Res, RequestCreditModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'MaxAmount') double? maxAmount,
      @JsonKey(name: 'QR') String? qr,
      @JsonKey(name: 'Approved') bool? approved,
      @JsonKey(name: 'PartnerId') int? partnerId,
      @JsonKey(name: 'PartnerName') String? partnerName});
}

/// @nodoc
class _$RequestCreditModelCopyWithImpl<$Res, $Val extends RequestCreditModel>
    implements $RequestCreditModelCopyWith<$Res> {
  _$RequestCreditModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_RequestCreditModelCopyWith<$Res>
    implements $RequestCreditModelCopyWith<$Res> {
  factory _$$_RequestCreditModelCopyWith(_$_RequestCreditModel value,
          $Res Function(_$_RequestCreditModel) then) =
      __$$_RequestCreditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'MaxAmount') double? maxAmount,
      @JsonKey(name: 'QR') String? qr,
      @JsonKey(name: 'Approved') bool? approved,
      @JsonKey(name: 'PartnerId') int? partnerId,
      @JsonKey(name: 'PartnerName') String? partnerName});
}

/// @nodoc
class __$$_RequestCreditModelCopyWithImpl<$Res>
    extends _$RequestCreditModelCopyWithImpl<$Res, _$_RequestCreditModel>
    implements _$$_RequestCreditModelCopyWith<$Res> {
  __$$_RequestCreditModelCopyWithImpl(
      _$_RequestCreditModel _value, $Res Function(_$_RequestCreditModel) _then)
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
    return _then(_$_RequestCreditModel(
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
class _$_RequestCreditModel implements _RequestCreditModel {
  const _$_RequestCreditModel(
      {@JsonKey(name: 'MaxAmount') this.maxAmount,
      @JsonKey(name: 'QR') this.qr,
      @JsonKey(name: 'Approved') this.approved,
      @JsonKey(name: 'PartnerId') this.partnerId,
      @JsonKey(name: 'PartnerName') this.partnerName});

  factory _$_RequestCreditModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestCreditModelFromJson(json);

  @override
  @JsonKey(name: 'MaxAmount')
  final double? maxAmount;
  @override
  @JsonKey(name: 'QR')
  final String? qr;
  @override
  @JsonKey(name: 'Approved')
  final bool? approved;
  @override
  @JsonKey(name: 'PartnerId')
  final int? partnerId;
  @override
  @JsonKey(name: 'PartnerName')
  final String? partnerName;

  @override
  String toString() {
    return 'RequestCreditModel(maxAmount: $maxAmount, qr: $qr, approved: $approved, partnerId: $partnerId, partnerName: $partnerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCreditModel &&
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
  _$$_RequestCreditModelCopyWith<_$_RequestCreditModel> get copyWith =>
      __$$_RequestCreditModelCopyWithImpl<_$_RequestCreditModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestCreditModelToJson(
      this,
    );
  }
}

abstract class _RequestCreditModel implements RequestCreditModel {
  const factory _RequestCreditModel(
          {@JsonKey(name: 'MaxAmount') final double? maxAmount,
          @JsonKey(name: 'QR') final String? qr,
          @JsonKey(name: 'Approved') final bool? approved,
          @JsonKey(name: 'PartnerId') final int? partnerId,
          @JsonKey(name: 'PartnerName') final String? partnerName}) =
      _$_RequestCreditModel;

  factory _RequestCreditModel.fromJson(Map<String, dynamic> json) =
      _$_RequestCreditModel.fromJson;

  @override
  @JsonKey(name: 'MaxAmount')
  double? get maxAmount;
  @override
  @JsonKey(name: 'QR')
  String? get qr;
  @override
  @JsonKey(name: 'Approved')
  bool? get approved;
  @override
  @JsonKey(name: 'PartnerId')
  int? get partnerId;
  @override
  @JsonKey(name: 'PartnerName')
  String? get partnerName;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCreditModelCopyWith<_$_RequestCreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}
