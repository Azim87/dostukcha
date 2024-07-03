import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    @Default(0) final int clientId,
    @Default(false) final bool isClientIdExist,
    @Default(false) final bool isQrCodeExist,
    @Default(false) final bool isActiveCredit,
    final List<Widget>? pages,
  }) = _NavigationState;
}
