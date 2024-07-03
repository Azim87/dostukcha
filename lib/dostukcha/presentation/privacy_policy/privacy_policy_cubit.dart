import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/agreement_url_repository.dart';
import 'privacy_policy_state.dart';

@injectable
class PrivacyPolicyCubit extends Cubit<PrivacyPolicyState> {
  PrivacyPolicyCubit(this.agreementUrlRepository) : super(const PrivacyPolicyState());

  final AgreementUrlRepository agreementUrlRepository;

  Future<void> getPrivacyPolicyUrl() async {
    _showLoading();

    final either = await agreementUrlRepository.getAgreementUrl();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.getAgreementUrl,
      ),
      (r) => emit(state.copyWith.call(privacyPolicyUrl: r.confidentialityPolicyUrl)),
    );
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
