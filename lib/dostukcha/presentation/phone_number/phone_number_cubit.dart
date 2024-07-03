import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/mixin/phone_number_validation_mixin.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/phone_number_repository.dart';
import 'phone_number_state.dart';

@lazySingleton
class PhoneNumberCubit extends Cubit<PhoneNumberState> with PhoneNumberValidationMixin {
  PhoneNumberCubit(this.phoneNumberRepository) : super(const PhoneNumberState()) {
    //_getCachedPhoneNumber();
  }

  final PhoneNumberRepository phoneNumberRepository;
  final prefs = getIt<AppPrefs>();

  void validate(String val) {
    emit(state.copyWith(length: val.length, phoneNumber: val));

    _hideErrorText(val.length);
  }

  void onPrivacyPolicyValChanged(bool val) => emit(state.copyWith(isPrivacyPolicy: val));

  void onPrivateDataCollectionChanged(bool val) => emit(state.copyWith(isPrivateData: val));

  //Future<void> _getCachedPhoneNumber() async => emit(state.copyWith.call(phoneNumber: await prefs.getValue<String>(SharedKeys.PHONE_NUMBER)));

  void _hideErrorText(int length) {
    if (length < AppConstants.PHONE_NUMBER_LENGTH) {
      emit(state.copyWith(errorPhoneCode: null, errorPhoneNumber: null));
    }
  }

  void _validatePhoneBeforeSend(String fullPhoneNumber) {}

  Future<void> onNextPressed(final String unmaskedPhoneNumber) async {
    FocusScope.of(navigatorKey.currentContext!).unfocus();

    final String fullPhoneNumber = '${state.code} ${state.phoneNumber}';

    if (validatePhoneNumbers(fullPhoneNumber)) {
      final errorMessage = navigatorKey.currentContext.loc!.cannot_use_this_number;
      emit(state.copyWith(errorPhoneNumber: errorMessage, errorPhoneCode: null));
      return;
    }

    if (!validatePhoneCode(fullPhoneNumber)) {
      final errorMessage = navigatorKey.currentContext.loc!.enter_valid_phone_code;
      emit(state.copyWith(errorPhoneCode: errorMessage, errorPhoneNumber: null));
      return;
    }

    emit(state.copyWith(errorPhoneCode: null, errorPhoneNumber: null));

    await _cachePhoneNumber(unmaskedPhoneNumber, fullPhoneNumber);

    _showLoading();

    final either = await phoneNumberRepository.sendPhoneConfirmationCode();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.sendSmsCode,
      ),
      (r) async {
        if (r.errorCode != 0)
          _showError(r.message ?? '');
        else
          Navigation.route.goRouter.goNamed(
            Navs.sms_code,
            pathParameters: {'unmaskedPhoneNumber': unmaskedPhoneNumber, 'phoneNumber': '${state.code} ${state.phoneNumber} '},
          );
      },
    );
  }

  void _showError(String errorMessage) {
    emit(state.copyWith(error: errorMessage));
    Timer(const Duration(seconds: 2), () => emit(state.copyWith(error: null)));
  }

  Future<void> _cachePhoneNumber(String noCodeNumber, String phoneNumber) async {
    await prefs.setValue<String>(SharedKeys.NO_CODE_PHONE_NUMBER, noCodeNumber);
    await prefs.setValue<String>(SharedKeys.PHONE_NUMBER, phoneNumber);
  }

  bool get validLength => state.length == AppConstants.PHONE_NUMBER_LENGTH;

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
