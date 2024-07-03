import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/agreement_url_repository.dart';
import 'private_data_state.dart';

@injectable
class PrivateDataCubit extends Cubit<PrivateDataState> {
  PrivateDataCubit(this.agreementUrlRepository) : super(const PrivateDataState()) {
    getAgreementUrl();
  }

  final AgreementUrlRepository agreementUrlRepository;

  Future<void> getAgreementUrl() async {
    _showLoading();

    final either = await agreementUrlRepository.getAgreementUrl();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.getAgreementUrl,
      ),
      (r) => emit(state.copyWith.call(privateDataUrl: r.processingAgrementUrl)),
    );
  }

  void _showLoading() => emit(state.copyWith.call(loading: true));

  void _hideLoading() => emit(state.copyWith.call(loading: false));
}
