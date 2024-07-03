import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/agreement/agreement_entity.dart';

part 'agreement_model.freezed.dart';

part 'agreement_model.g.dart';

@freezed
class AgreementModel with _$AgreementModel {
  const factory AgreementModel({
    @JsonKey(name: 'СonfidentialityPolicyUrl') final String? ConfidentialityPolicyUrl,
    @JsonKey(name: 'ProcessingAgrementUrl') final String? ProcessingAgrementUrl,
  }) = _AgreementModel;

  factory AgreementModel.fromJson(Map<String, dynamic> json) => _$AgreementModelFromJson(json);
}

extension AgreementModelExt on AgreementModel {
  AgreementEntity toEntity() => AgreementEntity(
        confidentialityPolicyUrl: ConfidentialityPolicyUrl,
        processingAgrementUrl: ProcessingAgrementUrl,
      );
}
