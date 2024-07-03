import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/client_profile_data/client_profile_data.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) final bool loading,
    final ClientProfileData? clientProfileData,
  }) = _Initial;
}
