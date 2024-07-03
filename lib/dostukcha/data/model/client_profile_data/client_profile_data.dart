import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_profile_data.freezed.dart';

part 'client_profile_data.g.dart';

@freezed
class ClientProfileData with _$ClientProfileData {
  factory ClientProfileData({
    @JsonKey(name: 'Name') final String? name,
    @JsonKey(name: 'Surname') final String? surname,
    @JsonKey(name: 'MiddleName') final String? middleName,
    @JsonKey(name: 'BirthDate') final String? birthDate,
    @JsonKey(name: 'Gender') final String? gender,
    @JsonKey(name: 'IIN') final String? iin,
    @JsonKey(name: 'PhoneNumbers') final List<String>? phoneNumbers,
    @JsonKey(name: 'DocumentEndDate') final String? documentEndDate,
    @JsonKey(name: 'DocumentNumber') final String? documentNumber,
    @JsonKey(name: 'DocumentIssued') final String? documentIssued,
    @JsonKey(name: 'FaceImage') final String? faceImage,
  }) = _ClientProfileData;

  factory ClientProfileData.fromJson(Map<String, dynamic> json) => _$ClientProfileDataFromJson(json);
}
