import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_request_data.freezed.dart';

part 'create_request_data.g.dart';

@freezed
class CreateRequestData with _$CreateRequestData {
  const factory CreateRequestData({
    @JsonKey(name: 'RequestId') final String? requestId,
    @JsonKey(name: 'ExpireTime') final String? expireTime,
    @JsonKey(name: 'VerificationCheckTimeoutSeconds') final int? verificationCheckTimeoutSeconds,
    @JsonKey(name: 'VerificationCheckCount') final int? verificationCheckCount,
  }) = _CreateRequestData;

  factory CreateRequestData.fromJson(Map<String, dynamic> json) => _$CreateRequestDataFromJson(json);
}
