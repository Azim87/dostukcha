import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/logger/logger.dart';
import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/create_request_repository_impl.dart';

part 'create_request_cubit.freezed.dart';

part 'create_request_state.dart';

@injectable
class CreateRequestCubit extends Cubit<CreateRequestState> {
  CreateRequestCubit(this._createRequestRepository) : super(const CreateRequestState());

  final CreateRequestRepository _createRequestRepository;
  final _prefs = getIt<AppPrefs>();

  Future<void> createRequest(double selectedSum, int selectedDays) async {
    Logger.info('create request: selected sum: $selectedSum selected days: $selectedDays');

    _showLoading();

    final either = await _createRequestRepository.createRequest(
      selectedSum: selectedSum,
      selectedDays: selectedDays,
    );

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        endpoint: Endpoints.createRequest,
        callback: () {},
      ),
      (r) async {
        await _prefs.setValue<String>(SharedKeys.REQUEST_ID, r.data?.requestId ?? '');

        if (r.errorCode == 0) {
          emit(state.copyWith(expiredDate: r.data?.expireTime ?? ''));

          await _prefs.setValue<String>(SharedKeys.REQUEST_ID, r.data?.requestId ?? '');

          Navigation.route.goRouter.goNamed(
            Navs.operator_await,
            pathParameters: {'expired_time': state.expiredDate ?? DateTime.now().toIso8601String()},
          );
        } else if (r.errorCode == 4) {
          showErrorDialog(
            navigatorKey.currentContext!,
            r.message!,
            () => Navigation.route.goRouter.go(Navs.phone_number),
          );
        } else {
          showNetworkErrorAlertDialog(
            errorMessage: r.message!,
            callback: () {
              Navigation.route.goRouter.go(Navs.main_credit_calculator);
              _hideLoading();
            },
            endpoint: Endpoints.createRequest,
          );
        }
      },
    );
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
