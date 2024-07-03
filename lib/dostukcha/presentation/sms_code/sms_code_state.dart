import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_code_state.freezed.dart';

@freezed
class SmsCodeState with _$SmsCodeState {
  const factory SmsCodeState({
    @Default(false) final bool loading,
    @Default(false) final bool err1,
    @Default(false) final bool err2,
    @Default(0) final int getRequestTryCount,
    final String? smsCode,
  }) = _SmsCodeState;
}
