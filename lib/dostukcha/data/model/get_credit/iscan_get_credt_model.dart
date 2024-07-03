import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/get_credit/iscan_get_credt_entity.dart';

part 'iscan_get_credt_model.freezed.dart';

part 'iscan_get_credt_model.g.dart';

@Freezed(fromJson: true)
class IsCanGetCreditModel with _$IsCanGetCreditModel {
  const factory IsCanGetCreditModel({
    @JsonKey(name: 'ErrorCode') final int? errorCode,
    @JsonKey(name: 'ErrorText') final String? errorText,
    @JsonKey(name: 'ClientID') final int? clientId,
    @JsonKey(name: 'IsOldClient') final bool? isOldClient,
  }) = _IsCanGetCreditModel;

  factory IsCanGetCreditModel.fromJson(Map<String, dynamic> json) => _$IsCanGetCreditModelFromJson(json);
}

extension IsCanGetCreditModelExt on IsCanGetCreditModel {
  IsCanGetCreditEntity toEntity() => IsCanGetCreditEntity(
        errorCode: errorCode,
        errorText: errorText,
        clientId: clientId,
        isOldClient: isOldClient,
      );
}
