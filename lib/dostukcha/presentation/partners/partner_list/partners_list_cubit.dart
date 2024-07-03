import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../config/di/injection.dart';
import '../../../config/shared_prefs/app_prefs.dart';
import '../../../config/shared_prefs/shared_keys.dart';
import '../../../core/util/globals.dart';
import '../../../data/endpoints.dart';
import '../../../domain/repository/partners_repository.dart';
import 'partners_list_state.dart';

@injectable
class PartnersListCubit extends Cubit<PartnersListState> {
  PartnersListCubit(this.partnersRepository) : super(const PartnersListState()) {
    getProcessingPartners();
  }

  final PartnersRepository partnersRepository;
  final prefs = getIt<AppPrefs>();

  Future<void> getProcessingPartners() async {
    _showLoading();

    final either = await partnersRepository.getProcessingPartners();

    _hideLoading();

    either.fold(
          (error) =>
          showNetworkErrorAlertDialog(
            errorMessage: error,
            callback: () {},
            endpoint: Endpoints.getProcessingPartners,
          ),
          (r) {
        if (r == null) {
          showNetworkErrorAlertDialog(errorMessage: r.toString(), callback: () => null, endpoint: Endpoints.getProcessingPartners);
          return;
        }

        emit(state.copyWith(processingPartnersList: r));
      },
    );
  }

  Future<File> getPartnersLogoByIndex(int index) async {
    return convertBase64ToJpg(state.processingPartnersList[index].logo!, 'parters_list_logo');
  }

  Future<void> cachePartnerId(int id) async {
    await prefs.setValue<int>(SharedKeys.PARTNER_ID, id);
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
