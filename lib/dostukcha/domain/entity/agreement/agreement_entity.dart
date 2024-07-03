import 'package:freezed_annotation/freezed_annotation.dart';

part 'agreement_entity.freezed.dart';

@freezed
class AgreementEntity with _$AgreementEntity {
  const factory AgreementEntity({
    @JsonKey(name: 'ConfidentialityPolicyUrl') final String? confidentialityPolicyUrl,
    @JsonKey(name: 'ProcessingAgrementUrl') final String? processingAgrementUrl,
  }) = _AgreementEntity;
}
