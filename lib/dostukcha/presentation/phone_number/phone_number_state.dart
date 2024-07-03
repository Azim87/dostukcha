import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_state.freezed.dart';

@freezed
class PhoneNumberState with _$PhoneNumberState {
  const factory PhoneNumberState({
    @Default('+996') final String code,
    @Default(0) final int length,
    String? error,
    String? errorPhoneCode,
    String? errorPhoneNumber,
    @Default(false) final bool loading,
    @Default(true) final bool isPrivacyPolicy,
    @Default(true) final bool isPrivateData,
    String? phoneNumber,
  }) = _PhoneNumberState;
}
