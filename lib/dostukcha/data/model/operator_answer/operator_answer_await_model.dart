import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/operator_answer/operator_answer_await_entity.dart';

part 'operator_answer_await_model.freezed.dart';

part 'operator_answer_await_model.g.dart';

@Freezed(fromJson: true)
class OperatorAnswerAwaitModel with _$OperatorAnswerAwaitModel {
  const factory OperatorAnswerAwaitModel({
    @JsonKey(name: 'ErrorCode') final int? errorCode,
    @JsonKey(name: 'ErrorText') final String? errorText,
    @JsonKey(name: 'ClientID') final int? clientId,
    @JsonKey(name: 'IsOldClient') final bool? isOldClient,
  }) = _OperatorAnswerAwaitModel;

  factory OperatorAnswerAwaitModel.fromJson(Map<String, dynamic> json) => _$OperatorAnswerAwaitModelFromJson(json);
}

extension OperatorAnswerAwaitExt on OperatorAnswerAwaitModel {
  OperatorAnswerAwaitEntity toEntity() => OperatorAnswerAwaitEntity(
        errorCode: errorCode,
        errorText: errorText,
        clientId: clientId,
        isOldClient: isOldClient,
      );
}
