import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/is_can_get_credit_repository.dart';
import '../../domain/repository/personal_data_consent_checkcode_repository.dart';
import 'is_can_client_get_state.dart';

@injectable
class IsCanClientGetCubit extends Cubit<IsCanClientGetState> {
  IsCanClientGetCubit(
    this.isCanGetCreditRepository,
    this.personalDataConsentCheckCodeRepository,
  ) : super(const IsCanClientGetState()) {
    isCanGetCredit();
  }

  final IsCanGetCreditRepository isCanGetCreditRepository;
  final PersonalDataConsentCheckRepository personalDataConsentCheckCodeRepository;
  final prefs = getIt<AppPrefs>();

  Future<void> isCanGetCredit() async {
    _showLoading();

    final either = await isCanGetCreditRepository.isCanGetCredit();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.isClientCanGetCredit,
      ),
      (r) async {
        switch (r.errorCode) {
          case 0:
            await navigateToCalculator();
            break;
          case 1:
          case 10:
          case 8:
          case 100:
            showNetworkErrorAlertDialog(
              errorMessage: r.errorText!,
              callback: () {
                switch (r.errorCode) {
                  case 1:
                    Navigation.route.goRouter.go(Navs.qr_code);
                    break;
                  case 10:
                    Navigation.route.goRouter.go(Navs.liveness);
                    break;
                  case 8:
                  case 100:
                    Navigation.route.goRouter.go(Navs.phone_number);
                    break;
                }
              },
              endpoint: Endpoints.isClientCanGetCredit,
            );
            break;
        }
      },
    );
  }

  // Future<void> personalDataConsentCheckCode() async {
  //   _showLoading();
  //   final either = await personalDataConsentCheckCodeRepository.personalDataConsentCheckCode();
  //
  //   _hideLoading();
  //
  //   either.fold(
  //     (error) => showErrorDialog(navigatorKey.currentContext!, error.toString(), () => null),
  //     (success) async {
  //       switch (success.errorCode) {
  //         case 1:
  //           showErrorDialog(navigatorKey.currentContext!, success.message!, () => null);
  //           break;
  //         case 2:
  //           Navigation.route.goRouter.pushNamed(Navs.app_web_page);
  //           break;
  //         case 3:
  //           await navigateToCalculator();
  //           break;
  //         case 4:
  //           Navigation.route.goRouter.pushNamed(Navs.app_web_page);
  //           break;
  //         default:
  //           await navigateToCalculator();
  //       }
  //     },
  //   );
  // }

  Future<void> navigateToCalculator() async {
    await prefs.setValue(SharedKeys.QR_CODE, false);
    Navigation.route.goRouter.go(Navs.navigation);
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
