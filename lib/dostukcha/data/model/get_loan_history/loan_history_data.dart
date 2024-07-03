import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_history_data.freezed.dart';

part 'loan_history_data.g.dart';

@freezed
class LoanHistoryData with _$LoanHistoryData {
  const factory LoanHistoryData({
    @JsonKey(name: 'CreditId') final int? creditId,
    @JsonKey(name: 'ContractId') final String? contractId,
    @JsonKey(name: 'CreateDate') final DateTime? createDate,
    @JsonKey(name: 'LastOperationDate') final DateTime? lastOperationDate,
    @JsonKey(name: 'Status') final String? status,
    @JsonKey(name: 'Sum') final double? sum,
    @JsonKey(name: 'PaySource') final String? paySource,
    @JsonKey(name: 'CardNumber') final String? cardNumber,
  }) = _LoanHistoryData;

  factory LoanHistoryData.fromJson(Map<String, dynamic> json) => _$LoanHistoryDataFromJson(json);
}
