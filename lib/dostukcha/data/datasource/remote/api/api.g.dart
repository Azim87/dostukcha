// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _Api implements Api {
  _Api(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AgreementModel> getAgreementUrl() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AgreementModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetAgreementUrl',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AgreementModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppResponseModel<dynamic>> sendPhoneConfirmationCode(
      {required String phoneNumber}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'PhoneNumber': phoneNumber};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<dynamic>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'SendSmsCode',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<TokenModel> confirmCode(
      {required Map<String, dynamic> jsonData}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(jsonData);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<TokenModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'ConfirmSmsCode',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = TokenModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppResponseModel<dynamic>> confirmRequest(
      {required Map<String, dynamic> confirmRequestData}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(confirmRequestData);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'ConfirmRequest',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<AppResponseModel<PassportData>> uploadDocMRZPhoto({
    required int clientId,
    required String phoneNumber,
    required Map<String, dynamic> data,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ClientID': clientId,
      r'PhoneNumber': phoneNumber,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(data);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<PassportData>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'UploadDocMRZPhoto',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<PassportData>.fromJson(
      _result.data!,
      (json) => PassportData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AppResponseModel<dynamic>> uploadFile({
    required int clientId,
    required Map<String, dynamic> data,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'ClientID': clientId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(data);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'UploadFile',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<AppResponseModel<List<ContactType>>> getContactTypes() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<List<ContactType>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetContactTypes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<List<ContactType>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<ContactType>(
                  (i) => ContactType.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<AppResponseModel<List<ContactType>>> sendContactList({
    required String contactsHash,
    required String contactsData,
    required int clientId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'HashContacts': contactsHash,
      r'ClientID': clientId,
    };
    final _headers = <String, dynamic>{};
    final _data = contactsData;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<List<ContactType>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'SendContactsList',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<List<ContactType>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<ContactType>(
                  (i) => ContactType.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<IsCanGetCreditModel> isClientCanGetCredit({
    int? clientId,
    String? source,
    int? needDays,
    double? needSum,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ClientID': clientId,
      r'Source': source,
      r'NeedDays': needDays,
      r'NeedSum': needSum,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IsCanGetCreditModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'IsClientCanGetCredit',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = IsCanGetCreditModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OperatorAnswerAwaitModel> operatorAnswerAwait(
      {String? creditRequestId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'creditRequestId': creditRequestId
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OperatorAnswerAwaitModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'OperatorAnswerAwait',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = OperatorAnswerAwaitModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppResponseModel<GetDefaultCreditLimitData>>
      getDefaultCreditLimit() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<GetDefaultCreditLimitData>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetDefaultCreditLimit',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<GetDefaultCreditLimitData>.fromJson(
      _result.data!,
      (json) =>
          GetDefaultCreditLimitData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AppResponseModel<GetDefaultCreditLimitData>> getCreditLimit(
      {required int clientId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'ClientID': clientId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<GetDefaultCreditLimitData>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetCreditLimit',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<GetDefaultCreditLimitData>.fromJson(
      _result.data!,
      (json) =>
          GetDefaultCreditLimitData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<List<ProcessingPartnersModel>> getProcessingPartners() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ProcessingPartnersModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetProcessingPartners',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) =>
            ProcessingPartnersModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<ProcessingPartnerAddressesModel> getProcessingPartnerAddresses(
      {required int partnerId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'partnerId': partnerId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProcessingPartnerAddressesModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetProcessingPartnerAddresses',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProcessingPartnerAddressesModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RequestCreditModel> requestCredit(
      {required Map<String, dynamic> data}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(data);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RequestCreditModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'RequestCredit',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RequestCreditModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppResponseModel<CreateRequestData>> createRequest({
    required int clientId,
    required double selectedSum,
    required int selectedDays,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'clientId': clientId,
      r'amount': selectedSum,
      r'needDays': selectedDays,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<CreateRequestData>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'CreateRequest',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<CreateRequestData>.fromJson(
      _result.data!,
      (json) => CreateRequestData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AppResponseModel<GetRequestData>> getRequest(
      {required int clientId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'clientId': clientId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<GetRequestData>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetRequest',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<GetRequestData>.fromJson(
      _result.data!,
      (json) => GetRequestData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AppResponseModel<GetCreditPayInfoData>> getCreditPayInfo(
      {required int clientId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'clientId': clientId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<GetCreditPayInfoData>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetCreditPayInfo',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<GetCreditPayInfoData>.fromJson(
      _result.data!,
      (json) => GetCreditPayInfoData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<void> removeItemFromOperators({required int clientId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'ClientId': clientId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'RemoveItemFromOperators',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
  }

  @override
  Future<IsCanGetCreditModel> preliminaryCheck({required int clientId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'ClientId': clientId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IsCanGetCreditModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'PreliminaryCheck',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = IsCanGetCreditModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AppResponseModel<GetClientData>> getClientData({
    required int clientId,
    required String phoneNumber,
    required bool deletePhoto,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ClientId': clientId,
      r'PhoneNumber': phoneNumber,
      r'deletePhoto': deletePhoto,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<GetClientData>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetClientData',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<GetClientData>.fromJson(
      _result.data!,
      (json) => GetClientData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AppResponseModel<ClientProfileData>> getClientProfile(
      {required int clientId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'ClientId': clientId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<ClientProfileData>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetClientProfile',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<ClientProfileData>.fromJson(
      _result.data!,
      (json) => ClientProfileData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AppResponseModel<List<LoanHistoryData>>> getLoanHistory(
      {required int clientId}) async {
    const _extra = <String, dynamic>{'token': true};
    final queryParameters = <String, dynamic>{r'clientId': clientId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<List<LoanHistoryData>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetLoanHistory',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<List<LoanHistoryData>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<LoanHistoryData>(
                  (i) => LoanHistoryData.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<AppResponseModel<dynamic>> personalDataConsentCheckCode() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'PersonalDataConsentCheckCode',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<AppResponseModel<dynamic>> personalDataConsentSendCode() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'PersonalDataConsentSendCode',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<AppResponseModel<dynamic>> personalDataConsentConfirmCode(
      {required String code}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'code': code};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'PersonalDataConsentConfirmCode',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<AppResponseModel<OperatorAnswerSettingsData>>
      operatorAnswerAwaitSettings() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppResponseModel<OperatorAnswerSettingsData>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'GetSettings',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AppResponseModel<OperatorAnswerSettingsData>.fromJson(
      _result.data!,
      (json) =>
          OperatorAnswerSettingsData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
