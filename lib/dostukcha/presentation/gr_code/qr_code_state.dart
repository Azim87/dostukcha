import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/request_credit/request_credit_entity.dart';

part 'qr_code_state.freezed.dart';

@freezed
class QrCodeState with _$QrCodeState {
  const factory QrCodeState({
    @Default(false) final bool loading,
    @Default(false) final bool culture,
    final String? qrImagePath,
    final File? file,
    @Default(0) final int index,
    final RequestCreditEntity? requestCredit,
  }) = _QrCodeState;
}
