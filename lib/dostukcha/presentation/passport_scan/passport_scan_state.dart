import 'package:freezed_annotation/freezed_annotation.dart';

import 'passport_page.dart';

part 'passport_scan_state.freezed.dart';

@freezed
class PassportScanState with _$PassportScanState {
  const factory PassportScanState({
    @Default(false) final bool loading,
    @Default(false) final bool reTake,
    @Default('Сделать Фото') final String text,
    @Default(PassportStatus.BACK) final PassportStatus passportStatus,
    @Default(0) final int scanLength,
  }) = _PassportScanState;
}
