import 'package:injectable/injectable.dart';

import '../../model/agreement/agreement_model.dart';
import '../../model/app_response/app_response_model.dart';
import '../../model/client_profile_data/client_profile_data.dart';
import '../../model/contact_type/contact_type.dart';
import '../../model/create_request/create_request_data.dart';
import '../../model/get_client_data/get_client_data.dart';
import '../../model/get_credit/iscan_get_credt_model.dart';
import '../../model/get_credit_pay_info/get_credit_pay_info_data.dart';
import '../../model/get_default_credit/get_default_credit_limit_data.dart';
import '../../model/get_loan_history/loan_history_data.dart';
import '../../model/get_request/get_request_data.dart';
import '../../model/operator_answer/operator_answer_await_model.dart';
import '../../model/operator_answer_settings_data/operator_answer_settings_data.dart';
import '../../model/passport_data/passport_data.dart';
import '../../model/processing_partner_addresses/processing_partner_addresses_model.dart';
import '../../model/processing_partners/processing_partners_model.dart';
import '../../model/request_credit/request_credit_model.dart';
import '../../model/token/token_model.dart';
import 'api/api.dart';
import 'iremote_data_source.dart';

@LazySingleton(as: IRemoteDataSource)
class RemoteDataSourceImpl extends IRemoteDataSource {
  RemoteDataSourceImpl(this.api);

  late final Api api;

  @override
  Future<AppResponseModel<dynamic>> sendPhoneConfirmationCode({required String phoneNumber}) async =>
      api.sendPhoneConfirmationCode(phoneNumber: phoneNumber);

  @override
  Future<TokenModel> confirmCode({required Map<String, dynamic> jsonData}) async => api.confirmCode(jsonData: jsonData);

  @override
  Future<AgreementModel> getAgreementUrl() async => api.getAgreementUrl();

  @override
  Future<AppResponseModel<PassportData>> uploadDocMRZPhoto(
          {required int clientId, required String phoneNumber, required Map<String, dynamic> data}) async =>
      api.uploadDocMRZPhoto(clientId: clientId, phoneNumber: phoneNumber, data: data);

  @override
  Future<AppResponseModel<dynamic>> uploadFile({required int clientId, required Map<String, dynamic> data}) async =>
      api.uploadFile(data: data, clientId: clientId);

  @override
  Future<AppResponseModel<List<ContactType>>> getContactType() => api.getContactTypes();

  @override
  Future<AppResponseModel<dynamic>> sendContactList({required String contactsHash, required String contactsData, required int clientId}) async =>
      api.sendContactList(contactsHash: contactsHash, contactsData: contactsData, clientId: clientId);

  @override
  Future<IsCanGetCreditModel> isCanGetCredit({required int clientId, String? source, int? needDays, double? needSum}) async =>
      api.isClientCanGetCredit(clientId: clientId, source: source, needDays: needDays, needSum: needSum);

  @override
  Future<AppResponseModel<GetDefaultCreditLimitData>> getDefaultCreditLimitData() async => api.getDefaultCreditLimit();

  @override
  Future<AppResponseModel<GetDefaultCreditLimitData>> getCreditLimitData({required int clientId}) async => api.getCreditLimit(clientId: clientId);

  @override
  Future<List<ProcessingPartnersModel>> getProcessingPartners() async => api.getProcessingPartners();

  @override
  Future<ProcessingPartnerAddressesModel> getProcessingPartnerAddresses({required int partnerId}) async =>
      api.getProcessingPartnerAddresses(partnerId: partnerId);

  @override
  Future<RequestCreditModel> requestCredit({required Map<String, dynamic> data}) async => api.requestCredit(data: data);

  @override
  Future<AppResponseModel<CreateRequestData>> createRequest({required int clientId, required double selectedSum, required int selectedDays}) async =>
      api.createRequest(clientId: clientId, selectedSum: selectedSum, selectedDays: selectedDays);

  @override
  Future<OperatorAnswerAwaitModel> operatorAnswerAwait({required String creditRequestId}) async =>
      api.operatorAnswerAwait(creditRequestId: creditRequestId);

  @override
  Future<AppResponseModel<GetRequestData>> getRequest({required int clientId}) async => api.getRequest(clientId: clientId);

  @override
  Future<AppResponseModel<GetCreditPayInfoData>> getCreditPayInfo({required int clientId}) async => api.getCreditPayInfo(clientId: clientId);

  @override
  Future<AppResponseModel<dynamic>> confirmRequest({required Map<String, dynamic> confirmRequestData}) async =>
      api.confirmRequest(confirmRequestData: confirmRequestData);

  @override
  Future<void> removeItemFromOperators({required int clientId}) async => api.removeItemFromOperators(clientId: clientId);

  @override
  Future<IsCanGetCreditModel> preliminaryCheck({required int clientId}) async => api.preliminaryCheck(clientId: clientId);

  @override
  Future<AppResponseModel<GetClientData>> getClientData(
          {required int clientId, required final String phoneNumber, required final bool deletePhoto}) async =>
      api.getClientData(clientId: clientId, phoneNumber: phoneNumber, deletePhoto: deletePhoto);

  @override
  Future<AppResponseModel<ClientProfileData>> getClientProfile({required int clientId}) async => api.getClientProfile(clientId: clientId);

  @override
  Future<AppResponseModel<List<LoanHistoryData>>> getLoanHistory({required int clientId}) async => api.getLoanHistory(clientId: clientId);

  @override
  Future<AppResponseModel<dynamic>> personalDataConsentCheckCode() => api.personalDataConsentCheckCode();

  @override
  Future<AppResponseModel<dynamic>> personalDataConsentSendCode() => api.personalDataConsentSendCode();

  @override
  Future<AppResponseModel<dynamic>> personalDataConsentConfirmCode({required String code}) => api.personalDataConsentConfirmCode(code: code);

  @override
  Future<AppResponseModel<OperatorAnswerSettingsData>> operatorAnswerSettingsData() => api.operatorAnswerAwaitSettings();
}
