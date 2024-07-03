import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/get_credit_pay_info_repository.dart';
import 'profile_with_loan_state.dart';

@injectable
class ProfileWithLoanCubit extends Cubit<ProfileWithLoanState> {
  ProfileWithLoanCubit(this.getCreditPayInfoRepository) : super(const ProfileWithLoanState());

  final GetCreditPayInfoRepository getCreditPayInfoRepository;
  final prefs = getIt<AppPrefs>();

  Future<void> getCreditPayInfo() async {
    _showLoading();

    final either = await getCreditPayInfoRepository.getCreditPayInfo();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.getCreditPayInfo,
      ),
      (r) {
        if (r.data == null) {
          Navigation.route.goRouter.go(Navs.main_credit_calculator);
        } else {
          emit(state.copyWith(getCreditPayInfoData: r.data));
        }
      },
    );
  }

  Future<void> onLoanContract() async => Navigation.route.goRouter.pushNamed(
        Navs.contract,
        pathParameters: {'request_id': state.getCreditPayInfoData?.requestId ?? ''},
      );

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
