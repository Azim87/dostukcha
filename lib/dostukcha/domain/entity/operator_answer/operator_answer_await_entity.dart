import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator_answer_await_entity.freezed.dart';

@freezed
class OperatorAnswerAwaitEntity with _$OperatorAnswerAwaitEntity {
  const factory OperatorAnswerAwaitEntity({
    @JsonKey(name: 'ErrorCode') final int? errorCode,
    @JsonKey(name: 'ErrorText') final String? errorText,
    @JsonKey(name: 'ClientID') final int? clientId,
    @JsonKey(name: 'IsOldClient') final bool? isOldClient,
  }) = _OperatorAnswerAwaitEntity;
}
