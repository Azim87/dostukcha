// ignore_for_file: strict_raw_type

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

abstract class IRemoteDataSource {
  Future<AgreementModel> getAgreementUrl();

  Future<AppResponseModel> sendPhoneConfirmationCode({required String phoneNumber});

  Future<TokenModel> confirmCode({required Map<String, dynamic> jsonData});

  Future<AppResponseModel<PassportData>> uploadDocMRZPhoto({required int clientId, required String phoneNumber, required Map<String, dynamic> data});

  Future<AppResponseModel> uploadFile({required int clientId, required Map<String, dynamic> data});

  Future<AppResponseModel<List<ContactType>>> getContactType();

  Future<AppResponseModel> sendContactList({required String contactsHash, required String contactsData, required int clientId});

  Future<IsCanGetCreditModel> isCanGetCredit({required final int clientId, final String? source, final int? needDays, final double? needSum});

  Future<OperatorAnswerAwaitModel> operatorAnswerAwait({required final String creditRequestId});

  Future<AppResponseModel<GetDefaultCreditLimitData>> getDefaultCreditLimitData();

  Future<AppResponseModel<GetDefaultCreditLimitData>> getCreditLimitData({required int clientId});

  Future<List<ProcessingPartnersModel>> getProcessingPartners();

  Future<ProcessingPartnerAddressesModel> getProcessingPartnerAddresses({required final int partnerId});

  Future<RequestCreditModel> requestCredit({required Map<String, dynamic> data});

  Future<AppResponseModel<CreateRequestData>> createRequest(
      {required final int clientId, required final double selectedSum, required final int selectedDays});

  Future<AppResponseModel<GetRequestData>> getRequest({required final int clientId});

  Future<AppResponseModel<GetCreditPayInfoData>> getCreditPayInfo({required final int clientId});

  Future<AppResponseModel<dynamic>> confirmRequest({required final Map<String, dynamic> confirmRequestData});

  Future<void> removeItemFromOperators({required final int clientId});

  Future<IsCanGetCreditModel> preliminaryCheck({required final int clientId});

  Future<AppResponseModel<GetClientData>> getClientData(
      {required final int clientId, required final String phoneNumber, required final bool deletePhoto});

  Future<AppResponseModel<ClientProfileData>> getClientProfile({required final int clientId});

  Future<AppResponseModel<List<LoanHistoryData>>> getLoanHistory({required final int clientId});

  Future<AppResponseModel<dynamic>> personalDataConsentCheckCode();

  Future<AppResponseModel<dynamic>> personalDataConsentSendCode();

  Future<AppResponseModel<dynamic>> personalDataConsentConfirmCode({required final String code});

  Future<AppResponseModel<OperatorAnswerSettingsData>> operatorAnswerSettingsData();
}
