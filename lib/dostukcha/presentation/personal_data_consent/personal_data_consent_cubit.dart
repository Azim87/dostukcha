import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/personal_data_consent_checkcode_repository.dart';
import 'personal_data_consent_state.dart';

@injectable
class PersonalDataConsentCubit extends Cubit<PersonalDataConsentState> {
  PersonalDataConsentCubit(this.personalDataConsentCheckCodeRepository, this.networkChecker) : super(const PersonalDataConsentState()) {
    getPhoneNumber();
    personalDataConsentSendCode();
  }

  final PersonalDataConsentCheckRepository personalDataConsentCheckCodeRepository;
  final NetworkChecker networkChecker;

  Future<void> personalDataConsentSendCode() async {
    _showLoading();

    final either = await personalDataConsentCheckCodeRepository.personalDataConsentSendCode();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () => null,
        endpoint: Endpoints.personalDataConsentSendCode,
      ),
      (success) async {
        _showLoading();
        if (success.errorCode == 0) {
        } else if (success.errorCode == 1) {
          Navigation.route.goRouter.go(Navs.phone_number);
        } else if (success.errorCode == 2) {
          Navigation.route.goRouter.goNamed(Navs.is_can_client_get);
        }
      },
    );
  }

  Future<void> personalDataConsentConfirmCode() async {
    _showLoading();

    final either = await personalDataConsentCheckCodeRepository.personalDataConsentConfirmCode(code: state.code!);

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () => _hideLoading(),
        endpoint: Endpoints.personalDataConsentConfirmCode,
      ),
      (success) async {
        switch (success.errorCode) {
          case 2:
            Navigation.route.goRouter.push(Navs.personal_data, extra: await getCulture());
            break;
          case 1:
          case 3:
            showNetworkErrorAlertDialog(
              errorMessage: success.message!,
              callback: () {
                switch (success.errorCode) {
                  case 1:
                    Navigation.route.goRouter.go(Navs.phone_number);
                    break;
                  case 3:
                    break;
                }
              },
              endpoint: Endpoints.personalDataConsentConfirmCode,
            );

            break;
          case 4:
            Navigation.route.goRouter.goNamed(Navs.is_can_client_get);
            break;
          case 5:
            emit(state.copyWith(showResend: true));
            break;
          default:
            Navigation.route.goRouter.go(Navs.is_can_client_get);
        }
      },
    );
  }

  Future<void> getPhoneNumber() async {
    final prefs = getIt<AppPrefs>();
    emit(state.copyWith(phoneNumber: await prefs.getValue<String>(SharedKeys.PHONE_NUMBER) ?? ''));
  }

  void onSmsCodeSubmit(String code) => emit(state.copyWith(code: code));

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
