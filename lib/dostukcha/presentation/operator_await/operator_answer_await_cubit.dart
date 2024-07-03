import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/logger/logger.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/entity/operator_answer/operator_answer_await_entity.dart';
import '../../domain/repository/operator_answer_await_repository.dart';
import 'operator_answer_await_state.dart';

@injectable
class OperatorAnswerAwaitCubit extends Cubit<OperatorAnswerAwaitState> {
  OperatorAnswerAwaitCubit(this.operatorAnswerAwaitRepository) : super(const OperatorAnswerAwaitState());

  final OperatorAnswerAwaitRepository operatorAnswerAwaitRepository;

  Future<void> getOperatorAnswerAwaitSettings() async {
    _showLoading();

    final either = await operatorAnswerAwaitRepository.operatorAnswerSettings();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () => null,
        endpoint: Endpoints.operatorAnswerGetSettings,
      ),
      (r) async {
        emit(state.copyWith(
          verificationCheckTimeoutSeconds: r.data?.verificationCheckTimeoutSeconds ?? 0,
          verificationCheckCount: r.data?.verificationCheckCount ?? 0,
        ));
        await operatorAnswerAwait();
      },
    );
  }

  Future<void> operatorAnswerAwait() async {
    _showLoading();
    final either = await operatorAnswerAwaitRepository.operatorAnswerAwait();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () => null,
        endpoint: Endpoints.operatorAnswerAwait,
      ),
      (r) => _handleOperatorAnswerSuccessResponse(r),
    );
  }

  Future<void> checkOperatorAnswer() async {
    Logger.info('operatorAnswerTryCount: ${state.operatorAnswerTryCount}');
    if (state.verificationCheckTimeoutSeconds == 0 || state.operatorAnswerTryCount == state.verificationCheckCount) {
      return;
    }

    _showOperatorAwaitLoadingText();
    _incrementOperatorAnswerAwaitCount();

    await Future.delayed(Duration(seconds: state.verificationCheckTimeoutSeconds!));
    operatorAnswerAwait();
  }

  Future<void> removeItemFromOperators() async => operatorAnswerAwaitRepository.removeItemFromOperators();

  Future<void> getExpiredTime(String expiredTime) async => emit(state.copyWith(expiredTime: expiredTime));

  void _handleOperatorAnswerSuccessResponse(OperatorAnswerAwaitEntity r) {
    final prefs = getIt<AppPrefs>();

    switch (r.errorCode) {
      case 0:
        _hideLoading();
        _hideOperatorAwaitLoading();
        Navigation.route.goRouter.goNamed(Navs.partners_list, pathParameters: {'expired_time': state.expiredTime!});
        break;
      case 7:
        showNetworkErrorAlertDialog(
          errorMessage: r.errorText?? '',
          callback: () async{
            await prefs.setValue(SharedKeys.QR_CODE, false);
            Navigation.route.goRouter.go(Navs.navigation);
          },
          endpoint: Endpoints.operatorAnswerAwait,
        );

        break;
      case 9:
        checkOperatorAnswer();
        break;
    }
  }

  void _incrementOperatorAnswerAwaitCount() => emit(state.copyWith(operatorAnswerTryCount: state.operatorAnswerTryCount + 1));

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));

  void _showOperatorAwaitLoadingText() => emit(state.copyWith(loadingOperatorAwait: true));

  void _hideOperatorAwaitLoading() => emit(state.copyWith(loadingOperatorAwait: false));
}
