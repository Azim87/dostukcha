import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/request_credit/request_credit_entity.dart';

part 'request_credit_model.freezed.dart';

part 'request_credit_model.g.dart';

@freezed
class RequestCreditModel with _$RequestCreditModel {
  const factory RequestCreditModel({
    @JsonKey(name: 'MaxAmount') final double? maxAmount,
    @JsonKey(name: 'QR') final String? qr,
    @JsonKey(name: 'Approved') final bool? approved,
    @JsonKey(name: 'PartnerId') final int? partnerId,
    @JsonKey(name: 'PartnerName') final String? partnerName,
  }) = _RequestCreditModel;

  factory RequestCreditModel.fromJson(Map<String, dynamic> json) => _$RequestCreditModelFromJson(json);
}

extension RequestCreditModelExt on RequestCreditModel {
  RequestCreditEntity toEntity() => RequestCreditEntity(
        maxAmount: maxAmount,
        qr: qr,
        approved: approved,
        partnerId: partnerId,
        partnerName: partnerName,
      );
}
