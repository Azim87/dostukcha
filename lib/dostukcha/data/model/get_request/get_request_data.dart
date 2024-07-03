import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_request_data.freezed.dart';

part 'get_request_data.g.dart';

@freezed
class GetRequestData with _$GetRequestData {
  const factory GetRequestData({
    @JsonKey(name: 'RequestId') final String? requestId,
    @JsonKey(name: 'ExpireTime') final String? expireTime,
    @JsonKey(name: 'ClientId') final int? clientId,
    @JsonKey(name: 'CreditSum') final double? creditSum,
    @JsonKey(name: 'DaysCount') final int? daysCount,
    @JsonKey(name: 'Source') final int? source,
    @JsonKey(name: 'RequestState') final int? requestState,
  }) = _GetRequestData;

  factory GetRequestData.fromJson(Map<String, dynamic> json) => _$GetRequestDataFromJson(json);
}
