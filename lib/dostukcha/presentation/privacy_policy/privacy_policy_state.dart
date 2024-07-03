import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_policy_state.freezed.dart';

@freezed
class PrivacyPolicyState with _$PrivacyPolicyState {
  const factory PrivacyPolicyState({
    @Default(false) final bool loading,
    final String? privacyPolicyUrl,
  }) = _PrivacyPolicyState;
}
