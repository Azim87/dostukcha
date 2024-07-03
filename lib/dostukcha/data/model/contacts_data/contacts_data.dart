import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_data.freezed.dart';
part 'contacts_data.g.dart';

@Freezed(toJson: true)
class ContactsData with _$ContactsData {
  const factory ContactsData({
    final String? displayName,
    final int? contactTypeId,
    final List<PhoneNumber>? phoneNumbers,
    final bool? selected,
  }) = _ContactsData;

}

@Freezed(toJson: true)
class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    final String? value,
    final String? oldValue,
  }) = _PhoneNumber;
}
