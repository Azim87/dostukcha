import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/processing_partners/processing_partners_entity.dart';

part 'partners_list_state.freezed.dart';

@freezed
class PartnersListState with _$PartnersListState {
  const factory PartnersListState({
    @Default(false) final bool loading,
    @Default([]) final List<ProcessingPartnersEntity> processingPartnersList,
    final File? file,
  }) = _PartnersListState;
}
