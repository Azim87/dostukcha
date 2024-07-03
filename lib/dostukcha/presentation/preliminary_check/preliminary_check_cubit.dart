import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/preliminary_check_repository.dart';
import 'preliminary_check_state.dart';

@injectable
class PreliminaryCheckCubit extends Cubit<PreliminaryCheckState> {
  PreliminaryCheckCubit(this.preliminaryCheckRepository) : super(const PreliminaryCheckState());

  final PreliminaryCheckRepository preliminaryCheckRepository;
  final prefs = getIt<AppPrefs>();

  Future<void> onPreliminaryCheck() async {
    _showLoading();

    final either = await preliminaryCheckRepository.preliminaryCheck();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.preliminaryCheck,
      ),
      (r) async {
        switch (r.errorCode) {
          case 0:
            Navigation.route.goRouter.go(Navs.is_can_client_get);
            break;

          case 4:
            showErrorDialog(navigatorKey.currentContext!, r.errorText!, () => Navigation.route.goRouter.go(Navs.phone_number));
            break;

          case 3:
          case 7:
          case 8:
            await _handleCommonErrorCase(r.errorText, false, Navs.navigation);
            break;

          case 9:
            emit(state.copyWith(scanError: true));
            await prefs.setValue(SharedKeys.SCAN_ERROR, true);
            break;

          case 20:
            await _handleCommonErrorCase(r.errorText, false, Navs.profile_with_loan);
            break;

          case 21:
            await _handleCommonErrorCase(r.errorText, true, Navs.navigation);
            break;

          case 1:
          case 23:
          case 100:
            showNetworkErrorAlertDialog(
              errorMessage: r.errorText!,
              callback: () async {
                switch (r.errorCode) {
                  case 1:
                    Navigation.route.goRouter.go(Navs.phone_number);
                    break;
                  case 23:
                Navigation.route.goRouter.push(Navs.personal_data, extra: await getCulture());
                    break;
                  case 100:
                    Navigation.route.goRouter.go(Navs.phone_number);
                    break;
                }
              },
              endpoint: Endpoints.preliminaryCheck,
            );
            break;
        }

        /* 100 : Клиент не найден

        8 : Не возможно получить кредит в данный момент, пожалуйста попробуйте позже.
        - Калькулятор
        20 : У вас уже имеется кредитный займ. К сожалению, мы не сможем предоставить вам более 1 кредита одновременн.
        - Страница с текущим займом
        21 : У вас уже имеется активная заявка на сумму 000
        - Кидаем на страницу сформированного qr
        1 : ЧС
        - Ввод номера телефона
        9 : Пожалуйста, сделайте повторное фото документов.
        - Страница с фото доков
        7 : Отказ из-за статуса не действительности документа
        - Калькулятор
        3 : Произошла ошибка при получении данных из ГРНП, попробуйте позже
        - Калькулятор
        4 : К сожалению, мы не можем предоставить Вам займ, поскольку мы выдаем их только лицам, в возрасте от #AGE_1# до #AGE_2# лет
        - Калькулятор*/
      },
    );
  }

  Future<void> _handleCommonErrorCase(String? errorText, bool isQrCode, String destination) async {
    showNetworkErrorAlertDialog(
      errorMessage: errorText!,
      callback: () async {
        await prefs.setValue(SharedKeys.QR_CODE, isQrCode);
        Navigation.route.goRouter.go(destination);
      },
      endpoint: Endpoints.preliminaryCheck,
    );
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
