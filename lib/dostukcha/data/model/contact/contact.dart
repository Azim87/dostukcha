import 'package:freezed_annotation/freezed_annotation.dart';

import '../contact_type/contact_type.dart';

part 'contact.freezed.dart';

part 'contact.g.dart';

@Freezed(toJson: true)
class Contact with _$Contact {
  const factory Contact({
    final String? displayName,
    final ContactType? type,
    final String? phone,
  }) = _Contact;
}
