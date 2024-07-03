import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_credit_pay_info_data.freezed.dart';

part 'get_credit_pay_info_data.g.dart';

@freezed
class GetCreditPayInfoData with _$GetCreditPayInfoData {
  const factory GetCreditPayInfoData({
    @JsonKey(name: 'CreditId') final int? creditId,
    @JsonKey(name: 'RequestId') final String? requestId,
    @JsonKey(name: 'DogNumber') final String? dogNumber,
    @JsonKey(name: 'GetAmount') final double? getAmount,
    @JsonKey(name: 'Days') final double? days,
    @JsonKey(name: 'Percent') final double? percent,
    @JsonKey(name: 'AdmissionFee') final double? admissionFee,
    @JsonKey(name: 'StateFee') final double? stateFee,
    @JsonKey(name: 'RepaymentAmount') final double? repaymentAmount,
    @JsonKey(name: 'RepaymentDate') final DateTime? repaymentDate,
    @JsonKey(name: 'RateName') final String? rateName,
  }) = _GetCreditPayInfoData;

  factory GetCreditPayInfoData.fromJson(Map<String, dynamic> json) => _$GetCreditPayInfoDataFromJson(json);
}
