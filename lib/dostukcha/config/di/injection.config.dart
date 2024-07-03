// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i13;

import '../../data/datasource/remote/api/api.dart' as _i17;
import '../../data/datasource/remote/iremote_data_source.dart' as _i18;
import '../../data/datasource/remote/remote_data_source.dart' as _i19;
import '../../data/repository/agreement_url_repository_impl.dart' as _i40;
import '../../data/repository/contact_repository_impl.dart' as _i42;
import '../../data/repository/create_request_repository_impl.dart' as _i45;
import '../../data/repository/get_client_data_repository_impl.dart' as _i47;
import '../../data/repository/get_credit_pay_info_repository_impl.dart' as _i49;
import '../../data/repository/get_credit_repository_impl.dart' as _i51;
import '../../data/repository/get_loan_history_repository_impl.dart' as _i53;
import '../../data/repository/is_can_get_credit_repository_impl.dart' as _i21;
import '../../data/repository/operator_answer_await_repository_impl.dart'
    as _i23;
import '../../data/repository/partners_repository_impl.dart' as _i25;
import '../../data/repository/personal_data_consent_checkcode_repository_impl.dart'
    as _i27;
import '../../data/repository/phone_number_repository_impl.dart' as _i30;
import '../../data/repository/preliminary_check_repository_impl.dart' as _i32;
import '../../data/repository/request_credit_repository_impl.dart' as _i34;
import '../../data/repository/sms_code_repository_impl.dart' as _i36;
import '../../data/repository/upload_file_parse_repository_impl.dart' as _i38;
import '../../domain/repository/agreement_url_repository.dart' as _i39;
import '../../domain/repository/contact_repository.dart' as _i41;
import '../../domain/repository/create_request_repository_impl.dart' as _i44;
import '../../domain/repository/get_client_data_repository.dart' as _i46;
import '../../domain/repository/get_credit_pay_info_repository.dart' as _i48;
import '../../domain/repository/get_credit_repository.dart' as _i50;
import '../../domain/repository/get_loan_history_repository.dart' as _i52;
import '../../domain/repository/is_can_get_credit_repository.dart' as _i20;
import '../../domain/repository/operator_answer_await_repository.dart' as _i22;
import '../../domain/repository/partners_repository.dart' as _i24;
import '../../domain/repository/personal_data_consent_checkcode_repository.dart'
    as _i26;
import '../../domain/repository/phone_number_repository.dart' as _i29;
import '../../domain/repository/preliminary_check_repository.dart' as _i31;
import '../../domain/repository/request_credit_repository.dart' as _i33;
import '../../domain/repository/sms_code_repository.dart' as _i35;
import '../../domain/repository/upload_file_parse_repository.dart' as _i37;
import '../../presentation/app/app_cubit.dart' as _i3;
import '../../presentation/calculator/calculator_cubit.dart' as _i72;
import '../../presentation/contacts/contacts_cubit.dart' as _i43;
import '../../presentation/create_request/create_request_cubit.dart' as _i73;
import '../../presentation/document/document_cubit.dart' as _i10;
import '../../presentation/gr_code/qr_code_cubit.dart' as _i68;
import '../../presentation/is_can_client_get/is_can_client_get_cubit.dart'
    as _i54;
import '../../presentation/liveness/liveness_cubit.dart' as _i55;
import '../../presentation/loan_contract/loan_contract_cubit.dart' as _i14;
import '../../presentation/loan_history/loan_history_cubit.dart' as _i56;
import '../../presentation/loan_sign/loan_sign_cubit.dart' as _i57;
import '../../presentation/navigation/navigation_cubit.dart' as _i15;
import '../../presentation/operator_await/operator_answer_await_cubit.dart'
    as _i58;
import '../../presentation/partners/partner_list/partners_list_cubit.dart'
    as _i59;
import '../../presentation/partners/partners_map/partners_on_map_cubit.dart'
    as _i60;
import '../../presentation/passport_scan/passport_scan_cubit.dart' as _i61;
import '../../presentation/personal_data_consent/personal_data_consent_cubit.dart'
    as _i28;
import '../../presentation/phone_number/phone_number_cubit.dart' as _i62;
import '../../presentation/preliminary_check/preliminary_check_cubit.dart'
    as _i63;
import '../../presentation/privacy_policy/privacy_policy_cubit.dart' as _i64;
import '../../presentation/private_data/private_data_cubit.dart' as _i65;
import '../../presentation/profile/profile_cubit.dart' as _i66;
import '../../presentation/profile_with_loan/profile_with_loan_cubit.dart'
    as _i67;
import '../../presentation/selfie_with_document/selfie_with_document_cubit.dart'
    as _i69;
import '../../presentation/sms_code/sms_code_cubit.dart' as _i70;
import '../../presentation/splash/splash_cubit.dart' as _i71;
import '../../presentation/support/faq_cubit.dart' as _i12;
import '../navigation/app_router.dart' as _i5;
import '../network/auth_interceptor.dart' as _i6;
import '../network/error_handler_interceptor.dart' as _i11;
import '../network/network_checker.dart' as _i16;
import '../network/parser/background_json_parser.dart' as _i7;
import '../service/device_info.dart' as _i8;
import '../shared_prefs/app_prefs.dart' as _i4;
import 'register_module.dart' as _i74;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppCubit>(() => _i3.AppCubit());
    gh.lazySingleton<_i4.AppPrefs>(() => _i4.AppPrefs());
    gh.singleton<_i5.AppRouter>(_i5.AppRouter());
    gh.factory<_i6.AuthInterceptor>(() => _i6.AuthInterceptor());
    gh.factory<_i7.BackgroundJsonParser>(() => _i7.BackgroundJsonParser());
    gh.lazySingleton<_i8.DeviceInfoService>(() => _i8.DeviceInfoService());
    gh.lazySingleton<_i9.Dio>(() => registerModule.createDio());
    gh.factory<_i10.DocumentCubit>(() => _i10.DocumentCubit());
    gh.factory<_i11.ErrorHandlerInterceptor>(
        () => _i11.ErrorHandlerInterceptor());
    gh.factory<_i12.FaqCubit>(() => _i12.FaqCubit());
    gh.lazySingleton<_i13.InternetConnectionChecker>(
        () => registerModule.checker);
    gh.factory<_i14.LoanContractCubit>(() => _i14.LoanContractCubit());
    gh.factory<_i15.NavigationCubit>(() => _i15.NavigationCubit());
    gh.lazySingleton<_i16.NetworkChecker>(() => _i16.NetworkChecker());
    gh.factory<String>(
      () => registerModule.textBaseUrl,
      instanceName: 'DostukchaBaseUrl',
      registerFor: {_test},
    );
    gh.factory<String>(
      () => registerModule.prodBaseUrl,
      instanceName: 'DostukchaBaseUrl',
      registerFor: {
        _prod,
        _dev,
      },
    );
    gh.lazySingleton<_i17.Api>(() => _i17.Api(
          gh<_i9.Dio>(),
          baseUrl: gh<String>(instanceName: 'DostukchaBaseUrl'),
        ));
    gh.lazySingleton<_i18.IRemoteDataSource>(
        () => _i19.RemoteDataSourceImpl(gh<_i17.Api>()));
    gh.lazySingleton<_i20.IsCanGetCreditRepository>(
        () => _i21.IsCanGetCreditRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i22.OperatorAnswerAwaitRepository>(
        () => _i23.OperatorAnswerAwaitRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i24.PartnersRepository>(() => _i25.PartnersRepositoryImpl(
          gh<_i18.IRemoteDataSource>(),
          gh<_i16.NetworkChecker>(),
        ));
    gh.lazySingleton<_i26.PersonalDataConsentCheckRepository>(
        () => _i27.PersonalDataConsentCheckCodeRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.factory<_i28.PersonalDataConsentCubit>(
        () => _i28.PersonalDataConsentCubit(
              gh<_i26.PersonalDataConsentCheckRepository>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i29.PhoneNumberRepository>(
        () => _i30.PhoneNumberRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i31.PreliminaryCheckRepository>(
        () => _i32.PreliminaryCheckRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i33.RequestCreditRepository>(
        () => _i34.RequestCreditRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i35.SmsCodeRepository>(() => _i36.SmsCodeRepositoryImpl(
          gh<_i18.IRemoteDataSource>(),
          gh<_i16.NetworkChecker>(),
        ));
    gh.lazySingleton<_i37.UploadFileParseRepository>(
        () => _i38.UploadFileParseRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i39.AgreementUrlRepository>(
        () => _i40.AgreementUrlRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i41.ContactRepository>(() => _i42.ContactRepositoryImpl(
          gh<_i18.IRemoteDataSource>(),
          gh<_i16.NetworkChecker>(),
        ));
    gh.lazySingleton<_i43.ContactsCubit>(() => _i43.ContactsCubit(
          gh<_i41.ContactRepository>(),
          gh<_i26.PersonalDataConsentCheckRepository>(),
          gh<_i16.NetworkChecker>(),
        ));
    gh.lazySingleton<_i44.CreateRequestRepository>(
        () => _i45.CreateRequestRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i46.GetClientDataRepository>(
        () => _i47.GetClientDataRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i48.GetCreditPayInfoRepository>(
        () => _i49.GetCreditPayInfoRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i50.GetCreditRepository>(
        () => _i51.GetCreditRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.lazySingleton<_i52.GetLoanHistoryRepository>(
        () => _i53.GetLoanHistoryRepositoryImpl(
              gh<_i18.IRemoteDataSource>(),
              gh<_i16.NetworkChecker>(),
            ));
    gh.factory<_i54.IsCanClientGetCubit>(() => _i54.IsCanClientGetCubit(
          gh<_i20.IsCanGetCreditRepository>(),
          gh<_i26.PersonalDataConsentCheckRepository>(),
        ));
    gh.factory<_i55.LivenessCubit>(
        () => _i55.LivenessCubit(gh<_i37.UploadFileParseRepository>()));
    gh.factory<_i56.LoanHistoryCubit>(
        () => _i56.LoanHistoryCubit(gh<_i52.GetLoanHistoryRepository>()));
    gh.factory<_i57.LoanSignCubit>(() => _i57.LoanSignCubit(
          gh<_i29.PhoneNumberRepository>(),
          gh<_i35.SmsCodeRepository>(),
        ));
    gh.factory<_i58.OperatorAnswerAwaitCubit>(() =>
        _i58.OperatorAnswerAwaitCubit(
            gh<_i22.OperatorAnswerAwaitRepository>()));
    gh.factory<_i59.PartnersListCubit>(
        () => _i59.PartnersListCubit(gh<_i24.PartnersRepository>()));
    gh.factory<_i60.PartnersOnMapCubit>(
        () => _i60.PartnersOnMapCubit(gh<_i24.PartnersRepository>()));
    gh.factory<_i61.PassportScanCubit>(
        () => _i61.PassportScanCubit(gh<_i37.UploadFileParseRepository>()));
    gh.lazySingleton<_i62.PhoneNumberCubit>(
        () => _i62.PhoneNumberCubit(gh<_i29.PhoneNumberRepository>()));
    gh.factory<_i63.PreliminaryCheckCubit>(() =>
        _i63.PreliminaryCheckCubit(gh<_i31.PreliminaryCheckRepository>()));
    gh.factory<_i64.PrivacyPolicyCubit>(
        () => _i64.PrivacyPolicyCubit(gh<_i39.AgreementUrlRepository>()));
    gh.factory<_i65.PrivateDataCubit>(
        () => _i65.PrivateDataCubit(gh<_i39.AgreementUrlRepository>()));
    gh.factory<_i66.ProfileCubit>(
        () => _i66.ProfileCubit(gh<_i46.GetClientDataRepository>()));
    gh.factory<_i67.ProfileWithLoanCubit>(
        () => _i67.ProfileWithLoanCubit(gh<_i48.GetCreditPayInfoRepository>()));
    gh.factory<_i68.QrCodeCubit>(
        () => _i68.QrCodeCubit(gh<_i33.RequestCreditRepository>()));
    gh.factory<_i69.SelfieWithDocumentCubit>(() =>
        _i69.SelfieWithDocumentCubit(gh<_i37.UploadFileParseRepository>()));
    gh.factory<_i70.SmsCodeCubit>(() => _i70.SmsCodeCubit(
          gh<_i35.SmsCodeRepository>(),
          gh<_i29.PhoneNumberRepository>(),
          gh<_i44.CreateRequestRepository>(),
        ));
    gh.factory<_i71.SplashCubit>(
        () => _i71.SplashCubit(gh<_i44.CreateRequestRepository>()));
    gh.lazySingleton<_i72.CalculatorCubit>(() => _i72.CalculatorCubit(
          gh<_i50.GetCreditRepository>(),
          gh<_i46.GetClientDataRepository>(),
        ));
    gh.factory<_i73.CreateRequestCubit>(
        () => _i73.CreateRequestCubit(gh<_i44.CreateRequestRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i74.RegisterModule {}
