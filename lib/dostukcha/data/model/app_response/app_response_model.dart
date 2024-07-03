import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/app_response/app_response_entity.dart';
import '../client_profile_data/client_profile_data.dart';
import '../contact_type/contact_type.dart';
import '../create_request/create_request_data.dart';
import '../get_client_data/get_client_data.dart';
import '../get_credit_pay_info/get_credit_pay_info_data.dart';
import '../get_default_credit/get_default_credit_limit_data.dart';
import '../get_loan_history/loan_history_data.dart';
import '../get_request/get_request_data.dart';
import '../operator_answer_settings_data/operator_answer_settings_data.dart';
import '../passport_data/passport_data.dart';

part 'app_response_model.freezed.dart';

part 'app_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class AppResponseModel<T> with _$AppResponseModel<T> {
  const factory AppResponseModel({
    @JsonKey(name: 'Data') final T? data,
    @JsonKey(name: 'ErrorCode') final int? errorCode,
    @JsonKey(name: 'Message') final String? message,
    @JsonKey(name: 'Success') final bool? success,
  }) = _AppResponseModel;

  factory AppResponseModel.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$AppResponseModelFromJson(json, fromJsonT);
}

extension AppResponseModelExt on AppResponseModel<dynamic> {
  AppResponseEntity<dynamic> toEntity() => AppResponseEntity(errorCode: errorCode, message: message, success: success, data: data);
}

extension PassportDataExt on AppResponseModel<PassportData> {
  AppResponseEntity<PassportData> toEntity() => AppResponseEntity(errorCode: errorCode, message: message, success: success, data: data);
}

extension ContactTypeExt on AppResponseModel<List<ContactType>> {
  AppResponseEntity<List<ContactType>> toEntity() => AppResponseEntity(errorCode: errorCode, message: message, success: success, data: data);
}

extension GetDefaultCreditLimitDataExt on AppResponseModel<GetDefaultCreditLimitData> {
  AppResponseEntity<GetDefaultCreditLimitData> toEntity() => AppResponseEntity(errorCode: errorCode, message: message, success: success, data: data);
}

extension CreateRequestExt on AppResponseModel<CreateRequestData> {
  AppResponseEntity<CreateRequestData> toEntity() => AppResponseEntity(data: data, errorCode: errorCode, message: message, success: success);
}

extension GetRequestExt on AppResponseModel<GetRequestData> {
  AppResponseEntity<GetRequestData> toEntity() => AppResponseEntity(data: data, errorCode: errorCode, message: message, success: success);
}

extension GetCreditPayInfoDataExt on AppResponseModel<GetCreditPayInfoData> {
  AppResponseEntity<GetCreditPayInfoData> toEntity() => AppResponseEntity(data: data, errorCode: errorCode, message: message, success: success);
}

extension GetClientDataExt on AppResponseModel<GetClientData> {
  AppResponseEntity<GetClientData> toEntity() => AppResponseEntity(data: data, errorCode: errorCode, message: message, success: success);
}

extension GetClientProfileDataExt on AppResponseModel<ClientProfileData> {
  AppResponseEntity<ClientProfileData> toEntity() => AppResponseEntity(data: data, errorCode: errorCode, message: message, success: success);
}

extension GetLoanHistoryDataExt on AppResponseModel<List<LoanHistoryData>> {
  AppResponseEntity<List<LoanHistoryData>> toEntity() => AppResponseEntity(data: data, errorCode: errorCode, message: message, success: success);
}

extension OperatorAnswerSettingsExt on AppResponseModel<OperatorAnswerSettingsData> {
  AppResponseEntity<OperatorAnswerSettingsData> toEntity() => AppResponseEntity(data: data, errorCode: errorCode, message: message, success: success);
}
