import 'package:freezed_annotation/freezed_annotation.dart';

part 'iscan_get_credt_entity.freezed.dart';

@freezed
class IsCanGetCreditEntity with _$IsCanGetCreditEntity {
  const factory IsCanGetCreditEntity({
    final int? errorCode,
    final String? errorText,
    final int? clientId,
    final bool? isOldClient,
  }) = _IsCanGetCreditEntity;
}
