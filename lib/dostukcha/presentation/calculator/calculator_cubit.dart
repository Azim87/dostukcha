import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/logger/logger.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/get_client_data_repository.dart';
import '../../domain/repository/get_credit_repository.dart';
import 'calculator_state.dart';

@lazySingleton
class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit(
    this._getDefaultCreditLimitRepository,
    // this.createRequestRepository,
    this.getClientDataRepository,
  ) : super(const CalculatorState());

  final GetCreditRepository _getDefaultCreditLimitRepository;

  //final CreateRequestRepository createRequestRepository;
  final GetClientDataRepository getClientDataRepository;
  final prefs = getIt<AppPrefs>();

  Future<void> onSumChange(double selectedSum) async {
    emit(state.copyWith.call(selectedSum: selectedSum));
    await prefs.setValue<double>(SharedKeys.SUM, selectedSum);
    calculateSumWithPercent();
  }

  Future<void> checkCreditLimitDatas() async {
    final clientId = await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;

    Logger.info('client id: $clientId');

    if (clientId == 0) {
      getDefaultCreditLimit();
    } else {
      getCreditLimit();
    }
  }

  Future<void> getDefaultCreditLimit() async {
    _showLoading();

    final either = await _getDefaultCreditLimitRepository.getDefaultCreditLimitData();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        endpoint: Endpoints.getDefaultCreditLimit,
        callback: () {},
      ),
      (r) {
        if (r.data == null) {
          showErrorDialog(navigatorKey.currentContext!, r.message!, () => null);
        }

        if (r.errorCode == 0) {
          emit(state.copyWith.call(
              creditLimitData: r.data, loading: false, creditMaxSum: r.data!.creditMaxSum!, selectedSum: r.data?.creditSumDefault?.toDouble() ?? 0));

          if (state.creditLimitData?.administrationFee != 0) {
            administrationFee();
          }

          setCreditRepaymentDate();
          calculateSumWithPercent();
        }
      },
    );
  }

  Future<void> getCreditLimit() async {
    _showLoading();

    final either = await _getDefaultCreditLimitRepository.getCreditLimitData();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        endpoint: Endpoints.getCreditLimit,
        callback: () {},
      ),
      (r) {
        if (r.data == null) {
          showErrorDialog(navigatorKey.currentContext!, r.message!, () => null);
        }

        if (r.errorCode == 0) {
          emit(state.copyWith
              .call(creditLimitData: r.data, creditMaxSum: r.data!.creditMaxSum!, selectedSum: r.data?.creditSumDefault?.toDouble() ?? 0));

          if (state.creditLimitData?.administrationFee != 0) {
            administrationFee();
          }

          setCreditRepaymentDate();
          calculateSumWithPercent();
        }
      },
    );
  }

  Future<void> onGetLoan() async {
    _showLoading();

    final either = await getClientDataRepository.getClientData();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        endpoint: Endpoints.getClientData,
        callback: () {},
      ),
      (r) async {
        if (r.data == null) {
          showErrorDialog(navigatorKey.currentContext!, r.message!, () => null);
          return;
        }

        if (!(r.data?.havePassportBack ?? false) || !(r.data?.havePassportFront ?? false)) {
          Navigation.route.goRouter.push(Navs.main_ver);
        } else if (!(r.data?.haveSelfie ?? false)) {
          Navigation.route.goRouter.go(Navs.liveness);
        } else if (!(r.data?.haveContacts ?? false)) {
          Navigation.route.goRouter.go(Navs.contact);
        } else if (!(r.data?.havePersonalDataConsent ?? false)) {
          final culutre = await getCulture();

          Logger.info('culture from calculator: $culutre');
          Navigation.route.goRouter.push(Navs.personal_data, extra: await getCulture());
        } else {
          // createRequest();
          Navigation.route.goRouter.goNamed(
            Navs.create_request,
            pathParameters: {
              'selectedSum': state.selectedSum.toString(),
              'selectedDays': state.creditLimitData?.daysMaxCount.toString() ?? '30',
            },
          );
        }
      },
    );

    await _cacheCreditInfo();
  }

  // Future<void> createRequest() async {
  //   final either = await createRequestRepository.createRequest(
  //     selectedSum: state.selectedSum,
  //     selectedDays: state.creditLimitData?.daysMaxCount ?? 0,
  //   );
  //
  //   either.fold(
  //     (error) => showNetworkErrorAlertDialog(
  //       errorMessage: error,
  //       endpoint: Endpoints.createRequest,
  //       callback: () {},
  //     ),
  //     (r) async {
  //       await prefs.setValue<String>(SharedKeys.REQUEST_ID, r.data?.requestId ?? '');
  //
  //       if (r.errorCode == 0) {
  //         emit(state.copyWith(expiredDate: r.data?.expireTime ?? ''));
  //
  //         await prefs.setValue<String>(SharedKeys.REQUEST_ID, r.data?.requestId ?? '');
  //
  //         Navigation.route.goRouter.goNamed(
  //           Navs.operator_await,
  //           pathParameters: {
  //             'expired_time': state.expiredDate ?? DateTime.now().toIso8601String(),
  //           },
  //         );
  //       } else if (r.errorCode == 4) {
  //         showErrorDialog(
  //           navigatorKey.currentContext!,
  //           r.message!,
  //           () => Navigation.route.goRouter.go(Navs.phone_number),
  //         );
  //       } else {
  //         showNetworkErrorAlertDialog(
  //           errorMessage: r.message!,
  //           callback: () {
  //             Navigation.route.goRouter.go(Navs.main_credit_calculator);
  //             _hideLoading();
  //           },
  //           endpoint: Endpoints.createRequest,
  //         );
  //       }
  //     },
  //   );
  // }

  Future<void> _cacheCreditInfo() async {
    await prefs.setValue<double>(SharedKeys.SUM, state.selectedSum);
    await prefs.setValue<int>(SharedKeys.DAYS, state.creditLimitData!.daysMaxCount ?? 0);
  }

  void calculateSumWithPercent() {
    final percentSum = state.creditLimitData!.daysMaxCount! * state.selectedSum.toInt() / 100 * state.creditLimitData!.normalPercent!;

    final totalSumWithPercent = state.selectedSum + percentSum + state.administrationFeeSum;

    emit(state.copyWith.call(totalSumWithPercent: totalSumWithPercent.toString(), rewardSum: percentSum));
  }

  void setCreditRepaymentDate() {
    final DateTime currentDate = DateTime.now();

    final String futureDate = DateTime(
      currentDate.year,
      currentDate.month,
      currentDate.day + state.creditLimitData!.daysMaxCount!,
    ).formats(AppConstants.DATE_FORMAT);

    emit(state.copyWith.call(repaymentDate: futureDate));
  }

  void administrationFee() {
    final administrationFeeSum = state.selectedSum * (state.creditLimitData!.administrationFee! / 100);
    emit(state.copyWith.call(administrationFeeSum: administrationFeeSum));
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));

  bool get isEnabled => state.creditLimitData != null;
}
