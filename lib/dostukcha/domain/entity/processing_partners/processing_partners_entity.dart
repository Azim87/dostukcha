import 'package:freezed_annotation/freezed_annotation.dart';

part 'processing_partners_entity.freezed.dart';

@freezed
class ProcessingPartnersEntity with _$ProcessingPartnersEntity {
  const factory ProcessingPartnersEntity({
    final int? id,
    final String? name,
    final String? description,
    final String? logo,
  }) = _ProcessingPartnersEntity;
}
