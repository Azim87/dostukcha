import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/contact_type/contact_type.dart';
import '../../data/model/contacts_data/contacts_data.dart';

part 'contacts_state.freezed.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState({
    @Default([]) final List<ContactType> contactType,
    @Default([]) final List<String> contacts,
    final String? phoneNumber,
    @Default(false) final bool isContactsValidated,
    @Default(false) final bool loading,
    @Default(2) final int contactsSize,
    @Default(ContactsData()) ContactsData contactsModel,
    @Default([]) List<ContactsData> newContactsModel,
  }) = _ContactsState;
}
