import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'liveness_state.freezed.dart';

@freezed
class LivenessState with _$LivenessState {
  const factory LivenessState({
    @Default(false) bool loading,
    final File? file,
  }) = _LivenessState;
}
