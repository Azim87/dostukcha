// ignore_for_file: strict_raw_type

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../endpoints.dart';
import '../../../model/agreement/agreement_model.dart';
import '../../../model/app_response/app_response_model.dart';
import '../../../model/client_profile_data/client_profile_data.dart';
import '../../../model/contact_type/contact_type.dart';
import '../../../model/create_request/create_request_data.dart';
import '../../../model/get_client_data/get_client_data.dart';
import '../../../model/get_credit/iscan_get_credt_model.dart';
import '../../../model/get_credit_pay_info/get_credit_pay_info_data.dart';
import '../../../model/get_default_credit/get_default_credit_limit_data.dart';
import '../../../model/get_loan_history/loan_history_data.dart';
import '../../../model/get_request/get_request_data.dart';
import '../../../model/operator_answer/operator_answer_await_model.dart';
import '../../../model/operator_answer_settings_data/operator_answer_settings_data.dart';
import '../../../model/passport_data/passport_data.dart';
import '../../../model/processing_partner_addresses/processing_partner_addresses_model.dart';
import '../../../model/processing_partners/processing_partners_model.dart';
import '../../../model/request_credit/request_credit_model.dart';
import '../../../model/token/token_model.dart';

part 'api.g.dart';

@RestApi()
@lazySingleton
abstract class Api {
  @factoryMethod
  factory Api(Dio dio, {
    @Named('DostukchaBaseUrl') String baseUrl,
  }) = _Api;

  //Возвращает URL адреса для политики конфиденциальности и соглашение на обработку данных
  @POST(Endpoints.getAgreementUrl)
  Future<AgreementModel> getAgreementUrl();

  //Отправка СМС кода к номеру клиента
  @GET(Endpoints.sendSmsCode)
  Future<AppResponseModel> sendPhoneConfirmationCode({@Query('PhoneNumber') required String phoneNumber});

  //Подтверждение номера телефона посредством ввода полученного SMS кода
  @POST(Endpoints.confirmSmsCode)
  Future<TokenModel> confirmCode({@Body() required final Map<String, dynamic> jsonData});

  //Подписать договор кредитной заявки
  @POST(Endpoints.confirmRequest)
  Future<AppResponseModel<dynamic>> confirmRequest({@Body() required final Map<String, dynamic> confirmRequestData});

//Загрузка фото документа файла со стороны MRZ кода, для парсинга данных клиента из фото
  @MultiPart()
  @POST(Endpoints.uploadDocMRZPhoto)
  Future<AppResponseModel<PassportData>> uploadDocMRZPhoto({
    @Query('ClientID') required final int clientId,
    @Query('PhoneNumber') required final String phoneNumber,
    @Body() required Map<String, dynamic> data,
  });

  //Сохранение файла клиента, таких как фото документа, селфи
  @POST(Endpoints.uploadFile)
  Future<AppResponseModel<dynamic>> uploadFile({
    @Query('ClientID') required final int clientId,
    @Body() required final Map<String, dynamic> data,
  });

  //Метод для получения списка типов контактов
  @POST(Endpoints.getContactTypes)
  Future<AppResponseModel<List<ContactType>>> getContactTypes();

  //Сохранение контаков из мобильного приложения
  @POST(Endpoints.sendContactsList)
  Future<AppResponseModel<List<ContactType>>> sendContactList({
    @Query('HashContacts') required String contactsHash,
    @Body() required String contactsData,
    @Query('ClientID') required int clientId,
  });

  //Проверка доспутности кредита клиенту
  @POST(Endpoints.isClientCanGetCredit)
  Future<IsCanGetCreditModel> isClientCanGetCredit({
    @Query('ClientID') final int? clientId,
    @Query('Source') final String? source,
    @Query('NeedDays') final int? needDays,
    @Query('NeedSum') final double? needSum,
  });

  //Ожидаем ответ оператора, запрос с приложения раз в 30 сек
  @GET(Endpoints.operatorAnswerAwait)
  Future<OperatorAnswerAwaitModel> operatorAnswerAwait({@Query('creditRequestId') final String? creditRequestId});

  //Получение кредитного лимита по умолчанию
  @GET(Endpoints.getDefaultCreditLimit)
  Future<AppResponseModel<GetDefaultCreditLimitData>> getDefaultCreditLimit();

  //Получение кредитного лимита для зарегистрированных пользователей
  @POST(Endpoints.getCreditLimit)
  Future<AppResponseModel<GetDefaultCreditLimitData>> getCreditLimit({@Query('ClientID') required final int clientId});

  //Доступные способы вывода кредита
  @GET(Endpoints.getProcessingPartners)
  Future<List<ProcessingPartnersModel>> getProcessingPartners();

  //Получения адресных данных точек партнера
  @GET(Endpoints.getProcessingPartnerAddresses)
  Future<ProcessingPartnerAddressesModel> getProcessingPartnerAddresses({@Query('partnerId') required final int partnerId});

  //Запросить кредит (Создать заявку)
  @POST(Endpoints.requestCredit)
  Future<RequestCreditModel> requestCredit({@Body() required Map<String, dynamic> data});

  //Создаем кредитную заявку
  @POST(Endpoints.createRequest)
  Future<AppResponseModel<CreateRequestData>> createRequest({
    @Query('clientId') required final int clientId,
    @Query('amount') required final double selectedSum,
    @Query('needDays') required final int selectedDays,
  });

  //Получить активную кредитную заявку клиента
  @GET(Endpoints.getRequest)
  Future<AppResponseModel<GetRequestData>> getRequest({@Query('clientId') required final int clientId});

  //Получить начисления по активному займу
  @GET(Endpoints.getCreditPayInfo)
  Future<AppResponseModel<GetCreditPayInfoData>> getCreditPayInfo({@Query('clientId') required final int clientId});

  //После подачи заявки на кредит, если клиент закрывает приложение или нажимает на кнопку назад, вызываем данный метод для отмены заявки от верификатора
  @DELETE(Endpoints.removeItemFromOperators)
  Future<void> removeItemFromOperators({@Query('ClientId') required final int clientId});

  //Предварительная проверка данных клиента до открытия вторичного калькулятора
  @POST(Endpoints.preliminaryCheck)
  Future<IsCanGetCreditModel> preliminaryCheck({@Query('ClientId') required final int clientId});

  //Передача инфы о клиенте в приложение (основной узел проверки)
  @GET(Endpoints.getClientData)
  Future<AppResponseModel<GetClientData>> getClientData({
    @Query('ClientId') required final int clientId,
    @Query('PhoneNumber') required final String phoneNumber,
    @Query('deletePhoto') required final bool deletePhoto,
  });

  //Получаем данные клиента для профайла
  @POST(Endpoints.getClientProfile)
  Future<AppResponseModel<ClientProfileData>> getClientProfile({@Query('ClientId') required final int clientId});

  //Метод для получения кредитной истории клиента
  // @POST(Endpoints.getLoanHistory)
  @Extra({'token': true})
  @POST(Endpoints.getLoanHistory)
  Future<AppResponseModel<List<LoanHistoryData>>> getLoanHistory({@Query('clientId') required final int clientId});

  //Проверка кода для подтверждения разрешения доступа к персональным данным
  @POST(Endpoints.personalDataConsentCheckCode)
  Future<AppResponseModel<dynamic>> personalDataConsentCheckCode();

  //Отправка кода для подтверждения разрешения доступа к персональным данным
  @POST(Endpoints.personalDataConsentSendCode)
  Future<AppResponseModel<dynamic>> personalDataConsentSendCode();

  //ППодтверждения разрешения доступа к персональным данным
  @POST(Endpoints.personalDataConsentConfirmCode)
  Future<AppResponseModel<dynamic>> personalDataConsentConfirmCode({@Query('code') required final String code});

  //настройки для мобилки
  @POST(Endpoints.operatorAnswerGetSettings)
  Future<AppResponseModel<OperatorAnswerSettingsData>> operatorAnswerAwaitSettings();
}
