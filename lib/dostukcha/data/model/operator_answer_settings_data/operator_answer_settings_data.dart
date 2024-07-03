import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator_answer_settings_data.freezed.dart';

part 'operator_answer_settings_data.g.dart';

@freezed
class OperatorAnswerSettingsData with _$OperatorAnswerSettingsData {
  const factory OperatorAnswerSettingsData({
    @JsonKey(name: 'VerificationCheckTimeoutSeconds') final int? verificationCheckTimeoutSeconds,
    @JsonKey(name: 'VerificationCheckCount') final int? verificationCheckCount,
  }) = _OperatorAnswerSettingsData;

  factory OperatorAnswerSettingsData.fromJson(final Map<String, dynamic> json) => _$OperatorAnswerSettingsDataFromJson(json);
}
