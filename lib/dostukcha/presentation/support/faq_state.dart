part of 'faq_cubit.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState({
    @Default(false) final bool language,
    final String? url,
}) = _FaqState;
}
