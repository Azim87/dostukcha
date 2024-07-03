import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/get_client_data_repository.dart';
import 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._getClientDataRepository) : super(const ProfileState());

  final GetClientDataRepository _getClientDataRepository;

  Future<void> getClientProfileData() async {
    _showLoading();

    final either = await _getClientDataRepository.getClientProfileData();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.getClientProfile,
      ),
      (success) {
        if (success.errorCode != 0 && success.data == null)
          showNetworkErrorAlertDialog(errorMessage: success.message!, callback: () => null, endpoint: Endpoints.getClientProfile);
        else
          emit(state.copyWith(clientProfileData: success.data));
      },
    );
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
