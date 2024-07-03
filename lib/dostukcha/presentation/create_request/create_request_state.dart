part of 'create_request_cubit.dart';

@freezed
class CreateRequestState with _$CreateRequestState {
  const factory CreateRequestState({
    @Default(false) final bool loading,
    final String? expiredDate,
  }) = _CreateRequestState;
}
