// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'processing_partner_addresses_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProcessingPartnerAddressesEntity {
  String? get logo => throw _privateConstructorUsedError;
  String? get logoMini => throw _privateConstructorUsedError;
  List<Address>? get addresses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProcessingPartnerAddressesEntityCopyWith<ProcessingPartnerAddressesEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessingPartnerAddressesEntityCopyWith<$Res> {
  factory $ProcessingPartnerAddressesEntityCopyWith(
          ProcessingPartnerAddressesEntity value,
          $Res Function(ProcessingPartnerAddressesEntity) then) =
      _$ProcessingPartnerAddressesEntityCopyWithImpl<$Res,
          ProcessingPartnerAddressesEntity>;
  @useResult
  $Res call({String? logo, String? logoMini, List<Address>? addresses});
}

/// @nodoc
class _$ProcessingPartnerAddressesEntityCopyWithImpl<$Res,
        $Val extends ProcessingPartnerAddressesEntity>
    implements $ProcessingPartnerAddressesEntityCopyWith<$Res> {
  _$ProcessingPartnerAddressesEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProcessingPartnerAddressesEntityCopyWith<$Res>
    implements $ProcessingPartnerAddressesEntityCopyWith<$Res> {
  factory _$$_ProcessingPartnerAddressesEntityCopyWith(
          _$_ProcessingPartnerAddressesEntity value,
          $Res Function(_$_ProcessingPartnerAddressesEntity) then) =
      __$$_ProcessingPartnerAddressesEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? logo, String? logoMini, List<Address>? addresses});
}

/// @nodoc
class __$$_ProcessingPartnerAddressesEntityCopyWithImpl<$Res>
    extends _$ProcessingPartnerAddressesEntityCopyWithImpl<$Res,
        _$_ProcessingPartnerAddressesEntity>
    implements _$$_ProcessingPartnerAddressesEntityCopyWith<$Res> {
  __$$_ProcessingPartnerAddressesEntityCopyWithImpl(
      _$_ProcessingPartnerAddressesEntity _value,
      $Res Function(_$_ProcessingPartnerAddressesEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = freezed,
    Object? logoMini = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_$_ProcessingPartnerAddressesEntity(
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

class _$_ProcessingPartnerAddressesEntity
    implements _ProcessingPartnerAddressesEntity {
  const _$_ProcessingPartnerAddressesEntity(
      {this.logo, this.logoMini, final List<Address>? addresses})
      : _addresses = addresses;

  @override
  final String? logo;
  @override
  final String? logoMini;
  final List<Address>? _addresses;
  @override
  List<Address>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProcessingPartnerAddressesEntity(logo: $logo, logoMini: $logoMini, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcessingPartnerAddressesEntity &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.logoMini, logoMini) ||
                other.logoMini == logoMini) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, logo, logoMini,
      const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcessingPartnerAddressesEntityCopyWith<
          _$_ProcessingPartnerAddressesEntity>
      get copyWith => __$$_ProcessingPartnerAddressesEntityCopyWithImpl<
          _$_ProcessingPartnerAddressesEntity>(this, _$identity);
}

abstract class _ProcessingPartnerAddressesEntity
    implements ProcessingPartnerAddressesEntity {
  const factory _ProcessingPartnerAddressesEntity(
      {final String? logo,
      final String? logoMini,
      final List<Address>? addresses}) = _$_ProcessingPartnerAddressesEntity;

  @override
  String? get logo;
  @override
  String? get logoMini;
  @override
  List<Address>? get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessingPartnerAddressesEntityCopyWith<
          _$_ProcessingPartnerAddressesEntity>
      get copyWith => throw _privateConstructorUsedError;
}
