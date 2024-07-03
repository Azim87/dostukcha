import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_credit_entity.freezed.dart';
part 'request_credit_entity.g.dart';

@freezed
class RequestCreditEntity with _$RequestCreditEntity {
  const factory RequestCreditEntity({
    final double? maxAmount,
    final String? qr,
    final bool? approved,
    final int? partnerId,
    final String? partnerName,
  }) = _RequestCreditEntity;

  factory RequestCreditEntity.fromJson(Map<String, dynamic> json) => _$RequestCreditEntityFromJson(json);
}
