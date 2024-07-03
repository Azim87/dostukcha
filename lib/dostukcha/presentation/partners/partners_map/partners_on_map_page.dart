import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../config/di/injection.dart';
import '../../../config/navigation/navigation.dart';
import '../../../config/shared_prefs/app_prefs.dart';
import '../../../config/shared_prefs/shared_keys.dart';
import '../../../core/util/utils.dart';
import '../../widgets/widgets.dart';
import 'partners_on_map_cubit.dart';
import 'partners_on_map_state.dart';

class PartnersOnMapPage extends StatefulWidget {
  const PartnersOnMapPage({
    super.key,
    this.isFromQrPage = false,
    required this.partnerId,
  });

  final bool isFromQrPage;
  final String partnerId;

  @override
  State<PartnersOnMapPage> createState() => _PartnersOnMapPageState();
}

class _PartnersOnMapPageState extends State<PartnersOnMapPage> {
  final _partnerCubit = getIt.get<PartnersOnMapCubit>();

  @override
  void dispose() {
    super.dispose();
    _partnerCubit.dispose();
  }

  @override
  Widget build(BuildContext context) => Screen(
        systemUiOverlayStyle: SystemUiOverlayStyle.dark,
        showAppBar: true,
        centerTitle: true,
        widgetTitle: Text(context.loc!.address_of_partners, style: const TextStyle(color: Palette.black)),
        body: BlocBuilder<PartnersOnMapCubit, PartnersOnMapState>(
          bloc: _partnerCubit..getProcessingPartnerAddresses(int.parse(widget.partnerId)),
          builder: (context, state) {
            if (state.loading) {
              return const LoadingPage();
            }

            return Column(
              children: [
                _buildMap(state),
                _buildNextButton(),
                const SizedBox(width: 28),
              ].withSpaceBetween(height: 5),
            );
          },
        ),
      );

  Expanded _buildMap(PartnersOnMapState state) => Expanded(
        child: Stack(
          children: [
            GoogleMap(
              zoomControlsEnabled: false,
              markers: state.marker,
              onMapCreated: (controller) => _partnerCubit.onMapCreated(controller),
              initialCameraPosition: state.cameraPosition,
            ),
            if (state.processingPartnerAddressesList.addresses != null)
              Positioned(
                left: 0,
                right: 0,
                bottom: 10,
                child: Row(
                  children: [
                    if (state.index != 0) ...[
                      CircleIconButton(
                        iconData: Icons.keyboard_arrow_left_rounded,
                        onPress: () => _partnerCubit.prevIndex(),
                      )
                    ] else ...[
                      const SizedBox(width: 48)
                    ],
                    if (state.file != null)
                      Expanded(
                        child: SizedBox(
                          height: 90,
                          width: double.infinity,
                          child: PageView.builder(
                            controller: _partnerCubit.pageController,
                            itemBuilder: (context, index) => PartnersInfoContainer(
                              file: state.file!,
                              partnerAddresses: state.processingPartnerAddressesList.addresses![state.index],
                            ),
                          ),
                        ),
                      ),
                    if (_partnerCubit.partnersLength) ...[
                      CircleIconButton(
                        iconData: Icons.keyboard_arrow_right_rounded,
                        onPress: () => _partnerCubit.nextIndex(),
                      )
                    ] else ...[
                      const SizedBox(width: 48)
                    ]
                  ],
                ),
              )
          ],
        ),
      );

  AppButton _buildNextButton() => AppButton(
        onPressed:
            widget.isFromQrPage ? () => cachePartnerId().whenComplete(() => Navigation.route.goRouter.pop(true)) : () => _partnerCubit.onNext(),
        value: true,
        text: widget.isFromQrPage ? context.loc!.back : context.loc!.further,
        isBold: true,
      );

  Future<void> cachePartnerId() async {
    final prefs = getIt<AppPrefs>();
    prefs.setValue<int>(SharedKeys.PARTNER_ID, int.tryParse(widget.partnerId)!);
  }
}
