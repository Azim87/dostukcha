import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/processing_partners/processing_partners_entity.dart';

part 'processing_partners_model.freezed.dart';

part 'processing_partners_model.g.dart';

@freezed
class ProcessingPartnersModel with _$ProcessingPartnersModel {
  const factory ProcessingPartnersModel({
    @JsonKey(name: 'Id') final int? id,
    @JsonKey(name: 'Name') final String? name,
    @JsonKey(name: 'Description') final String? description,
    @JsonKey(name: 'Logo') final String? logo,
  }) = _ProcessingPartnersModel;

  factory ProcessingPartnersModel.fromJson(Map<String, dynamic> json) => _$ProcessingPartnersModelFromJson(json);
}

extension ProcessingPartnersModelExt on ProcessingPartnersModel {
  ProcessingPartnersEntity toEntity() => ProcessingPartnersEntity(
        id: id,
        name: name,
        description: description,
        logo: logo,
      );
}
