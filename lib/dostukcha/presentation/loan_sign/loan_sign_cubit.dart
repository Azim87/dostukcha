import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/phone_number_repository.dart';
import '../../domain/repository/sms_code_repository.dart';
import 'loan_sign_state.dart';

@injectable
class LoanSignCubit extends Cubit<LoanSignState> {
  LoanSignCubit(
    this.phoneNumberRepository,
    this.smsCodeRepository,
  ) : super(const LoanSignState()) {
    getRequestIdFromCache();
  }

  final PhoneNumberRepository phoneNumberRepository;
  final SmsCodeRepository smsCodeRepository;
  final prefs = getIt<AppPrefs>();

  void onSmsCode(String smsCode) => emit(state.copyWith(smsCode: smsCode));

  Future<void> onSendPhoneNumber() async {
    _showLoading();

    final either = await phoneNumberRepository.sendPhoneConfirmationCode();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () => null,
        endpoint: Endpoints.sendSmsCode,
      ),
      (r) {
        if (r.errorCode != 0) {
          showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () => null, endpoint: Endpoints.sendSmsCode);
        }
      },
    );
  }

  Future<void> onConfirmSmsCode() async {
    _showLoading();

    final either = await smsCodeRepository.confirmRequest(confirmCode: state.smsCode!);

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () => null,
        endpoint: Endpoints.confirmRequest,
      ),
      (r) {
        if (r.message != AppConstants.OK) {
          showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () => null, endpoint: Endpoints.confirmRequest);
        } else {
          prefs.setValue<bool>('isQrCode', true).whenComplete(() => Navigation.route.goRouter.go(Navs.navigation));
        }
      },
    );
  }

  Future<void> getPhoneNumberFromCache() async {
    final phoneNumber = await prefs.getValue<String>(SharedKeys.PHONE_NUMBER);
    emit(state.copyWith.call(phoneNumber: phoneNumber));
  }

  Future<void> getRequestIdFromCache() async {
    final requestId = await prefs.getValue<String>(SharedKeys.REQUEST_ID);
    emit(state.copyWith.call(requestId: requestId));
  }

  void _showLoading() => emit(state.copyWith.call(loading: true));

  void _hideLoading() => emit(state.copyWith.call(loading: false));
}
