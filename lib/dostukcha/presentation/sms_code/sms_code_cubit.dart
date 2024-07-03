import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/mixin/get_request_mixin.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/entity/token/token_entity.dart';
import '../../domain/repository/create_request_repository_impl.dart';
import '../../domain/repository/phone_number_repository.dart';
import '../../domain/repository/sms_code_repository.dart';
import 'sms_code_state.dart';

@injectable
class SmsCodeCubit extends Cubit<SmsCodeState> with GetRequestMixin {
  SmsCodeCubit(
    this.smsCodeRepository,
    this.phoneNumberRepository,
    this.createRequestRepository,
  ) : super(const SmsCodeState());

  final PhoneNumberRepository phoneNumberRepository;
  final SmsCodeRepository smsCodeRepository;
  final CreateRequestRepository createRequestRepository;

  void onSmsCode(String smsCode) => emit(state.copyWith(smsCode: smsCode));

  Future<void> onNextPressed() async {
    if (state.smsCode == null) {
      return;
    }

    _showLoading();

    final either = await smsCodeRepository.confirmCode(smsCode: state.smsCode!);

    _hideLoading();

    either.fold(
      (error) {
        _hideLoading();
        showNetworkErrorAlertDialog(
          errorMessage: error,
          callback: () {},
          endpoint: Endpoints.confirmSmsCode,
        );
      },
      (r) async {
        if (r.errorCode == 0) {
          await handleSuccessResponse(r);

          // await _cacheClientId(r.data!.ClientId!);
          //
          // if (r.data?.ClientId! != 0) {
          //   getRequest();
          // } else {
          //   Navigation.route.goRouter.go(Navs.navigation);
          // }
        } else {
          await handleErrorResponse(r);
          // await _removePhoneNumber();
          //
          // showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () => null, endpoint: Endpoints.confirmSmsCode);
        }
      },
    );
  }

  Future<void> handleSuccessResponse(TokenEntity r) async {
    if (r.data?.ClientId != null && r.data!.ClientId! != 0) {
      await _cacheClientId(r.data!.ClientId!);
      getRequest();
    } else {
      Navigation.route.goRouter.go(Navs.navigation);
    }
  }

  Future<void> handleErrorResponse(TokenEntity r) async {
    await _removePhoneNumber();
    showNetworkErrorAlertDialog(
      errorMessage: r.message!,
      callback: () => null,
      endpoint: Endpoints.confirmSmsCode,
    );
  }

  Future<void> getRequest() async {
    _showLoading();

    emit(state.copyWith(getRequestTryCount: state.getRequestTryCount + 1));
    final either = await createRequestRepository.getRequest();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.getRequest,
      ),
      (r) async {
        getRequestGlobal(
          r: r,
          getRequestTryCount: state.getRequestTryCount,
          getRequestCallback: getRequest,
          showLoading: _showLoading,
          hideLoading: _hideLoading,
        );
      },
    );
  }

  Future<void> resendSmsCode() async => phoneNumberRepository.sendPhoneConfirmationCode();

  Future<void> _cacheClientId(int clientId) async {
    if (clientId == null || clientId == 0) {
      await prefs.setValue<int>(SharedKeys.CLIENT_ID, 0);
    } else {
      await prefs.setValue<int>(SharedKeys.CLIENT_ID, clientId);
    }
  }

  Future<void> _removePhoneNumber() async {
    await prefs.remove(SharedKeys.NO_CODE_PHONE_NUMBER);
    await prefs.remove(SharedKeys.PHONE_NUMBER);
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
