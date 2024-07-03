// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'processing_partner_addresses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProcessingPartnerAddressesModel _$ProcessingPartnerAddressesModelFromJson(
    Map<String, dynamic> json) {
  return _ProcessingPartnerAddressesModel.fromJson(json);
}

/// @nodoc
mixin _$ProcessingPartnerAddressesModel {
  @JsonKey(name: 'Logo')
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'LogoMini')
  String? get logoMini => throw _privateConstructorUsedError;
  @JsonKey(name: 'Addresses')
  List<Address>? get addresses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessingPartnerAddressesModelCopyWith<ProcessingPartnerAddressesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessingPartnerAddressesModelCopyWith<$Res> {
  factory $ProcessingPartnerAddressesModelCopyWith(
          ProcessingPartnerAddressesModel value,
          $Res Function(ProcessingPartnerAddressesModel) then) =
      _$ProcessingPartnerAddressesModelCopyWithImpl<$Res,
          ProcessingPartnerAddressesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Logo') String? logo,
      @JsonKey(name: 'LogoMini') String? logoMini,
      @JsonKey(name: 'Addresses') List<Address>? addresses});
}

/// @nodoc
class _$ProcessingPartnerAddressesModelCopyWithImpl<$Res,
        $Val extends ProcessingPartnerAddressesModel>
    implements $ProcessingPartnerAddressesModelCopyWith<$Res> {
  _$ProcessingPartnerAddressesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = freezed,
    Object? logoMini = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_value.copyWith(
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      logoMini: freezed == logoMini
          ? _value.logoMini
          : logoMini // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProcessingPartnerAddressesModelCopyWith<$Res>
    implements $ProcessingPartnerAddressesModelCopyWith<$Res> {
  factory _$$_ProcessingPartnerAddressesModelCopyWith(
          _$_ProcessingPartnerAddressesModel value,
          $Res Function(_$_ProcessingPartnerAddressesModel) then) =
      __$$_ProcessingPartnerAddressesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Logo') String? logo,
      @JsonKey(name: 'LogoMini') String? logoMini,
      @JsonKey(name: 'Addresses') List<Address>? addresses});
}

/// @nodoc
class __$$_ProcessingPartnerAddressesModelCopyWithImpl<$Res>
    extends _$ProcessingPartnerAddressesModelCopyWithImpl<$Res,
        _$_ProcessingPartnerAddressesModel>
    implements _$$_ProcessingPartnerAddressesModelCopyWith<$Res> {
  __$$_ProcessingPartnerAddressesModelCopyWithImpl(
      _$_ProcessingPartnerAddressesModel _value,
      $Res Function(_$_ProcessingPartnerAddressesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = freezed,
    Object? logoMini = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_$_ProcessingPartnerAddressesModel(
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      logoMini: freezed == logoMini
          ? _value.logoMini
          : logoMini // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProcessingPartnerAddressesModel
    implements _ProcessingPartnerAddressesModel {
  const _$_ProcessingPartnerAddressesModel(
      {@JsonKey(name: 'Logo') this.logo,
      @JsonKey(name: 'LogoMini') this.logoMini,
      @JsonKey(name: 'Addresses') final List<Address>? addresses})
      : _addresses = addresses;

  factory _$_ProcessingPartnerAddressesModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ProcessingPartnerAddressesModelFromJson(json);

  @override
  @JsonKey(name: 'Logo')
  final String? logo;
  @override
  @JsonKey(name: 'LogoMini')
  final String? logoMini;
  final List<Address>? _addresses;
  @override
  @JsonKey(name: 'Addresses')
  List<Address>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProcessingPartnerAddressesModel(logo: $logo, logoMini: $logoMini, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcessingPartnerAddressesModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.logoMini, logoMini) ||
                other.logoMini == logoMini) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, logo, logoMini,
      const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcessingPartnerAddressesModelCopyWith<
          _$_ProcessingPartnerAddressesModel>
      get copyWith => __$$_ProcessingPartnerAddressesModelCopyWithImpl<
          _$_ProcessingPartnerAddressesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcessingPartnerAddressesModelToJson(
      this,
    );
  }
}

abstract class _ProcessingPartnerAddressesModel
    implements ProcessingPartnerAddressesModel {
  const factory _ProcessingPartnerAddressesModel(
          {@JsonKey(name: 'Logo') final String? logo,
          @JsonKey(name: 'LogoMini') final String? logoMini,
          @JsonKey(name: 'Addresses') final List<Address>? addresses}) =
      _$_ProcessingPartnerAddressesModel;

  factory _ProcessingPartnerAddressesModel.fromJson(Map<String, dynamic> json) =
      _$_ProcessingPartnerAddressesModel.fromJson;

  @override
  @JsonKey(name: 'Logo')
  String? get logo;
  @override
  @JsonKey(name: 'LogoMini')
  String? get logoMini;
  @override
  @JsonKey(name: 'Addresses')
  List<Address>? get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessingPartnerAddressesModelCopyWith<
          _$_ProcessingPartnerAddressesModel>
      get copyWith => throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'Latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'Longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'AddInfo')
  List<String>? get addInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Address') String? address,
      @JsonKey(name: 'Latitude') double? latitude,
      @JsonKey(name: 'Longitude') double? longitude,
      @JsonKey(name: 'AddInfo') List<String>? addInfo});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? addInfo = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      addInfo: freezed == addInfo
          ? _value.addInfo
          : addInfo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Address') String? address,
      @JsonKey(name: 'Latitude') double? latitude,
      @JsonKey(name: 'Longitude') double? longitude,
      @JsonKey(name: 'AddInfo') List<String>? addInfo});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? addInfo = freezed,
  }) {
    return _then(_$_Address(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      addInfo: freezed == addInfo
          ? _value._addInfo
          : addInfo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  const _$_Address(
      {@JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Address') this.address,
      @JsonKey(name: 'Latitude') this.latitude,
      @JsonKey(name: 'Longitude') this.longitude,
      @JsonKey(name: 'AddInfo') final List<String>? addInfo})
      : _addInfo = addInfo;

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Address')
  final String? address;
  @override
  @JsonKey(name: 'Latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'Longitude')
  final double? longitude;
  final List<String>? _addInfo;
  @override
  @JsonKey(name: 'AddInfo')
  List<String>? get addInfo {
    final value = _addInfo;
    if (value == null) return null;
    if (_addInfo is EqualUnmodifiableListView) return _addInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Address(name: $name, address: $address, latitude: $latitude, longitude: $longitude, addInfo: $addInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._addInfo, _addInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, address, latitude,
      longitude, const DeepCollectionEquality().hash(_addInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {@JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Address') final String? address,
      @JsonKey(name: 'Latitude') final double? latitude,
      @JsonKey(name: 'Longitude') final double? longitude,
      @JsonKey(name: 'AddInfo') final List<String>? addInfo}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Address')
  String? get address;
  @override
  @JsonKey(name: 'Latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'Longitude')
  double? get longitude;
  @override
  @JsonKey(name: 'AddInfo')
  List<String>? get addInfo;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
