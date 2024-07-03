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
import '../../domain/repository/request_credit_repository.dart';
import 'qr_code_state.dart';

@injectable
class QrCodeCubit extends Cubit<QrCodeState> {
  QrCodeCubit(this.requestCreditRepository) : super(const QrCodeState()) {
    getBanners();
  }

  final RequestCreditRepository requestCreditRepository;
  final prefs = getIt<AppPrefs>();

  Future<void> requestCredit() async {
    _showLoading();

    final either = await requestCreditRepository.requestCredit();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.requestCredit,
      ),
      (r) async {
        final file = await convertBase64ToJpg(r.qr ?? '', 'qr_code');
        emit(state.copyWith.call(requestCredit: r, file: file));
      },
    );
  }

  void onIndexChanged(int index) => emit(state.copyWith(index: index));

  Future<void> onPartnerAddressPressed() async {
    final int partnerId = await prefs.getValue<int>(SharedKeys.PARTNER_ID) ?? 0;
    Logger.info('partnerId: $partnerId');

    Navigation.route.goRouter.pushNamed(Navs.partners_map,
        extra: true, pathParameters: {'partnerId': partnerId == 0 ? state.requestCredit!.partnerId.toString() : partnerId.toString()});
  }

  Future<void> getBanners() async => emit(state.copyWith(culture: await prefs.getValue<bool>(SharedKeys.IS_LANG_CHANGED) ?? false));

  void _showLoading() => emit(state.copyWith.call(loading: true));

  void _hideLoading() => emit(state.copyWith.call(loading: false));
}
