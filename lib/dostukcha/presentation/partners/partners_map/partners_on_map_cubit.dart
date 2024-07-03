import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../config/navigation/nav_strings.dart';
import '../../../config/navigation/navigation.dart';
import '../../../core/util/assets.dart';
import '../../../core/util/globals.dart';
import '../../../data/endpoints.dart';
import '../../../data/model/processing_partner_addresses/processing_partner_addresses_model.dart';
import '../../../domain/repository/partners_repository.dart';
import 'partners_on_map_state.dart';

@injectable
class PartnersOnMapCubit extends Cubit<PartnersOnMapState> {
  PartnersOnMapCubit(
    this.partnersRepository,
  ) : super(const PartnersOnMapState());

  GoogleMapController? _controller;
  late final _pageController = PageController();
  final PartnersRepository partnersRepository;

  Future<void> getProcessingPartnerAddresses(int partnerId) async {
    _showLoading();

    final either = await partnersRepository.getProcessingPartnerAddresses(partnerId: partnerId);

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.getProcessingPartnerAddresses,
      ),
      (r) async {
        if (r.addresses == null) {
          showNetworkErrorAlertDialog(
              errorMessage: 'Адреса не найдены!',
              callback: () => Navigation.route.goRouter.pop(true),
              endpoint: Endpoints.getProcessingPartnerAddresses);
          return;
        } else {
          emit(state.copyWith(
              processingPartnerAddressesList: r,
              loading: false,
              cameraPosition: CameraPosition(
                  zoom: 15,
                  target: LatLng(
                    r.addresses?.first.latitude ?? 0,
                    r.addresses?.first.longitude ?? 0,
                  ))));

          animateCamera();
          marker();
        }
      },
    );

    final file = await convertBase64ToJpg(state.processingPartnerAddressesList.logo ?? '', 'partner_image');
    emit(state.copyWith(loading: false, file: file));
  }

  void onMapCreated(GoogleMapController controller) {
    final _completer = Completer<GoogleMapController>();

    _controller = controller;
    _completer.complete(_controller);
  }

  void animateCamera() {
    _controller?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
            state.processingPartnerAddressesList.addresses?[state.index].latitude ?? 0,
            state.processingPartnerAddressesList.addresses?[state.index].longitude ?? 0,
          ),
          zoom: 15,
        ),
      ),
    );
  }

  void cameraPosition() {
    _controller?.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(
          state.processingPartnerAddressesList.addresses?.first.latitude ?? 0,
          state.processingPartnerAddressesList.addresses?.first.longitude ?? 0,
        ),
        zoom: 12.0,
      ),
    ));
  }

  Future<void> marker() async {
    final Set<Marker> _markers = {};

    final BitmapDescriptor customMarkerIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      Assets.marker,
    );

    if (state.processingPartnerAddressesList.addresses != null) {
      for (final i in state.processingPartnerAddressesList.addresses!) {
        _markers.addAll([
          Marker(
            markerId: MarkerId(i.name ?? ''),
            position: LatLng(
              i.latitude ?? 0,
              i.longitude ?? 0,
            ),
            infoWindow: InfoWindow(
              title: i.name,
              snippet: i.address,
            ),
            icon: customMarkerIcon,
          ),
        ]);
      }

      emit(state.copyWith(marker: _markers));
    }
  }

  void nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void prefPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void nextIndex() {
    emit(state.copyWith.call(index: state.index + 1));
    animateCamera();
    nextPage();
  }

  void prevIndex() {
    if (state.index <= 0) {
      return;
    }

    emit(state.copyWith.call(index: state.index - 1));
    animateCamera();
    prefPage();
  }

  void dispose() {
    _controller?.dispose();
    _pageController.dispose();
  }

  PageController get pageController => _pageController;

  bool get partnersLength => state.index != state.processingPartnerAddressesList.addresses!.length - 1;

  Address get selectedPartner => state.processingPartnerAddressesList.addresses![state.index];

  void onNext() => Navigation.route.goRouter.pushNamed(Navs.loan_sign);

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
