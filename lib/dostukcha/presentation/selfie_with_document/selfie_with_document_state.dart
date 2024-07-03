part of 'selfie_with_document_cubit.dart';

@freezed
class SelfieWithDocumentState with _$SelfieWithDocumentState {
  const factory SelfieWithDocumentState({
    @Default(false) final bool loading,
  }) = _SelfieWithDocumentState;
}
