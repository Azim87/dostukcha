import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_data.freezed.dart';
part 'passport_data.g.dart';

@freezed
class PassportData with _$PassportData {
  const factory PassportData({
    final String? birthday,
    final String? docType,
    final String? expireDate,
    final String? firstname,
    final String? surname,
    final String? middlename,
    final int? gender,
    final String? country,
    final String? docNum,
    @JsonKey(name: 'INN') final String? inn,
    @JsonKey(name: 'Address') final String? address,
    @JsonKey(name: 'Address2') final String? address2,
    @JsonKey(name: 'ManualInput') final bool? manualInput,
    @JsonKey(name: 'DocumentStartDate') final String? documentStartDate,
    @JsonKey(name: 'Email') final String? email,
    @JsonKey(name: 'ClientID') final int? clientId,
    @JsonKey(name: 'PhoneNumber') final String? phoneNumber,
  }) = _PassportData;

  factory PassportData.fromJson(final Map<String, dynamic> json) => _$PassportDataFromJson(json);
}
