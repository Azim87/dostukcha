// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactsData {
  String? get displayName => throw _privateConstructorUsedError;
  int? get contactTypeId => throw _privateConstructorUsedError;
  List<PhoneNumber>? get phoneNumbers => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsDataCopyWith<ContactsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsDataCopyWith<$Res> {
  factory $ContactsDataCopyWith(
          ContactsData value, $Res Function(ContactsData) then) =
      _$ContactsDataCopyWithImpl<$Res, ContactsData>;
  @useResult
  $Res call(
      {String? displayName,
      int? contactTypeId,
      List<PhoneNumber>? phoneNumbers,
      bool? selected});
}

/// @nodoc
class _$ContactsDataCopyWithImpl<$Res, $Val extends ContactsData>
    implements $ContactsDataCopyWith<$Res> {
  _$ContactsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? contactTypeId = freezed,
    Object? phoneNumbers = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactTypeId: freezed == contactTypeId
          ? _value.contactTypeId
          : contactTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<PhoneNumber>?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactsDataCopyWith<$Res>
    implements $ContactsDataCopyWith<$Res> {
  factory _$$_ContactsDataCopyWith(
          _$_ContactsData value, $Res Function(_$_ContactsData) then) =
      __$$_ContactsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? displayName,
      int? contactTypeId,
      List<PhoneNumber>? phoneNumbers,
      bool? selected});
}

/// @nodoc
class __$$_ContactsDataCopyWithImpl<$Res>
    extends _$ContactsDataCopyWithImpl<$Res, _$_ContactsData>
    implements _$$_ContactsDataCopyWith<$Res> {
  __$$_ContactsDataCopyWithImpl(
      _$_ContactsData _value, $Res Function(_$_ContactsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? contactTypeId = freezed,
    Object? phoneNumbers = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$_ContactsData(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactTypeId: freezed == contactTypeId
          ? _value.contactTypeId
          : contactTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<PhoneNumber>?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ContactsData implements _ContactsData {
  const _$_ContactsData(
      {this.displayName,
      this.contactTypeId,
      final List<PhoneNumber>? phoneNumbers,
      this.selected})
      : _phoneNumbers = phoneNumbers;

  @override
  final String? displayName;
  @override
  final int? contactTypeId;
  final List<PhoneNumber>? _phoneNumbers;
  @override
  List<PhoneNumber>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? selected;

  @override
  String toString() {
    return 'ContactsData(displayName: $displayName, contactTypeId: $contactTypeId, phoneNumbers: $phoneNumbers, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsData &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.contactTypeId, contactTypeId) ||
                other.contactTypeId == contactTypeId) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, contactTypeId,
      const DeepCollectionEquality().hash(_phoneNumbers), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsDataCopyWith<_$_ContactsData> get copyWith =>
      __$$_ContactsDataCopyWithImpl<_$_ContactsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsDataToJson(
      this,
    );
  }
}

abstract class _ContactsData implements ContactsData {
  const factory _ContactsData(
      {final String? displayName,
      final int? contactTypeId,
      final List<PhoneNumber>? phoneNumbers,
      final bool? selected}) = _$_ContactsData;

  @override
  String? get displayName;
  @override
  int? get contactTypeId;
  @override
  List<PhoneNumber>? get phoneNumbers;
  @override
  bool? get selected;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsDataCopyWith<_$_ContactsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneNumber {
  String? get value => throw _privateConstructorUsedError;
  String? get oldValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneNumberCopyWith<PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberCopyWith<$Res> {
  factory $PhoneNumberCopyWith(
          PhoneNumber value, $Res Function(PhoneNumber) then) =
      _$PhoneNumberCopyWithImpl<$Res, PhoneNumber>;
  @useResult
  $Res call({String? value, String? oldValue});
}

/// @nodoc
class _$PhoneNumberCopyWithImpl<$Res, $Val extends PhoneNumber>
    implements $PhoneNumberCopyWith<$Res> {
  _$PhoneNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? oldValue = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      oldValue: freezed == oldValue
          ? _value.oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneNumberCopyWith<$Res>
    implements $PhoneNumberCopyWith<$Res> {
  factory _$$_PhoneNumberCopyWith(
          _$_PhoneNumber value, $Res Function(_$_PhoneNumber) then) =
      __$$_PhoneNumberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, String? oldValue});
}

/// @nodoc
class __$$_PhoneNumberCopyWithImpl<$Res>
    extends _$PhoneNumberCopyWithImpl<$Res, _$_PhoneNumber>
    implements _$$_PhoneNumberCopyWith<$Res> {
  __$$_PhoneNumberCopyWithImpl(
      _$_PhoneNumber _value, $Res Function(_$_PhoneNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? oldValue = freezed,
  }) {
    return _then(_$_PhoneNumber(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      oldValue: freezed == oldValue
          ? _value.oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_PhoneNumber implements _PhoneNumber {
  const _$_PhoneNumber({this.value, this.oldValue});

  @override
  final String? value;
  @override
  final String? oldValue;

  @override
  String toString() {
    return 'PhoneNumber(value: $value, oldValue: $oldValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumber &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.oldValue, oldValue) ||
                other.oldValue == oldValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, oldValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberCopyWith<_$_PhoneNumber> get copyWith =>
      __$$_PhoneNumberCopyWithImpl<_$_PhoneNumber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneNumberToJson(
      this,
    );
  }
}

abstract class _PhoneNumber implements PhoneNumber {
  const factory _PhoneNumber({final String? value, final String? oldValue}) =
      _$_PhoneNumber;

  @override
  String? get value;
  @override
  String? get oldValue;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberCopyWith<_$_PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
