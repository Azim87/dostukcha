import 'dart:async';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../domain/entity/processing_partner_addresses/processing_partner_addresses_entity.dart';

part 'partners_on_map_state.freezed.dart';

@freezed
class PartnersOnMapState with _$PartnersOnMapState {
  const factory PartnersOnMapState({
    @Default(0) final int index,
    @Default(ProcessingPartnerAddressesEntity()) final ProcessingPartnerAddressesEntity processingPartnerAddressesList,
    @Default(CameraPosition(target: LatLng(0, 0))) final CameraPosition cameraPosition,
    @Default({}) Set<Marker> marker,
    @Default(false) final bool loading,
    @Default(false) final bool success,
    @Default(false) final bool failure,
    final File? file,
    final Completer<GoogleMapController>? completer,
    final GoogleMapController? controller,
  }) = _PartnersOnMapState;
}
