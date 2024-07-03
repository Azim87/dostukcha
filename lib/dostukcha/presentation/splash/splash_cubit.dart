import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/mixin/get_request_mixin.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/create_request_repository_impl.dart';
import 'splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> with GetRequestMixin {
  SplashCubit(this._createRequestRepository) : super(const SplashState());

  final CreateRequestRepository _createRequestRepository;

  Future<void> checkIsClientAuthenticated() async {
    final token = await prefs.getValue<String>(SharedKeys.TOKEN);
    final clientId = await prefs.getValue<int>(SharedKeys.CLIENT_ID);

    if (token == null || clientId == 0) {
      Navigation.route.goRouter.go(Navs.select_lang);
    } else {
      getRequest();
    }
  }

  Future<void> getRequest() async {
    _showLoading();

    emit(state.copyWith(getRequestTryCount: state.getRequestTryCount + 1));

    final either = await _createRequestRepository.getRequest();
    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        endpoint: Endpoints.getRequest,
        callback: () {},
      ),
      (r) async {
        getRequestGlobal(
          r: r,
          getRequestTryCount: state.getRequestTryCount,
          getRequestCallback: getRequest,
          showLoading: _showLoading,
          hideLoading: _hideLoading,
        );
      },
    );
  }

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
