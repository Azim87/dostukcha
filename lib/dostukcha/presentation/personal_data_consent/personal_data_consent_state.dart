import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_data_consent_state.freezed.dart';

@freezed
class PersonalDataConsentState with _$PersonalDataConsentState {
 const  factory PersonalDataConsentState({
   @Default(false) final bool loading,
   @Default(false) final bool isSmsReceived,
   @Default(false) final bool showResend,
   final String? code,
   final String? phoneNumber,
}) = _PersonalDataConsentState;



  // const factory PersonalDataConsentState.initial() = _Initial;
  //
  // const factory PersonalDataConsentState.loading({required final bool isLoading}) = _Loading;
  //
  // const factory PersonalDataConsentState.phoneNumber({required final String phoneNumber}) = _PhoneNumber;
  //
  // const factory PersonalDataConsentState.success({required final bool isSuccess}) = _Success;
  //
  // const factory PersonalDataConsentState.error({required final String errorMessage}) = _Error;
}
