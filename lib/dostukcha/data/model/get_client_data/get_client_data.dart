import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_client_data.freezed.dart';

part 'get_client_data.g.dart';

@freezed
class GetClientData with _$GetClientData {
  const factory GetClientData({
    @JsonKey(name: 'ClientId') final int? clientId,
    @JsonKey(name: 'HaveSelfie') final bool? haveSelfie,
    @JsonKey(name: 'HaveContacts') final bool? haveContacts,
    @JsonKey(name: 'HavePassportFront') final bool? havePassportFront,
    @JsonKey(name: 'HavePassportBack') final bool? havePassportBack,
    @JsonKey(name: 'HavePersonalDataConsent') final bool? havePersonalDataConsent,
  }) = _GetClientData;

  factory GetClientData.fromJson(Map<String, dynamic> json) => _$GetClientDataFromJson(json);
}
