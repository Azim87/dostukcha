import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/di/injection.dart';
import '../../../config/navigation/nav_strings.dart';
import '../../../config/navigation/navigation.dart';
import '../../../core/util/extensions.dart';
import '../../../core/util/palette.dart';
import '../../../core/util/styles.dart';
import '../../private_data/private_data_page.dart';
import '../../widgets/widgets.dart';
import 'partners_list_cubit.dart';
import 'partners_list_state.dart';

class PartnersListPage extends StatelessWidget {
  PartnersListPage({super.key, required this.expiredTime});

  String expiredTime;

  final cubit = getIt<PartnersListCubit>();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackPressWidget(onTap: () => Navigation.route.goRouter.go(Navs.main_credit_calculator)),
                Text(
                  context.loc!.partners_select,
                  style: AppStyles.titleStyle2,
                ),
                Expanded(
                  child: BlocBuilder<PartnersListCubit, PartnersListState>(
                    bloc: cubit,
                    builder: (context, state) {
                      if (state.loading) {
                        return const LoadingPage();
                      }

                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.processingPartnersList.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            cubit.cachePartnerId(state.processingPartnersList[index].id ?? 0).whenComplete(() {
                              Navigation.route.goRouter.pushNamed(
                                Navs.partners,
                                pathParameters: {
                                  'partnerId': state.processingPartnersList[index].id.toString(),
                                  'expired_time': expiredTime,
                                },
                              );
                            });
                          },
                          child: FutureBuilder<File>(
                            future: cubit.getPartnersLogoByIndex(index),
                            builder: (context, snapshot) => PartnersContainer(
                              backgroundColor: Palette.containerColor,
                              file: snapshot.data?.path ?? '',
                              partnerTitle: state.processingPartnersList[index].name ?? '',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ].withSpaceTopAndBetween(height: 20),
            ),
          ),
        ),
      );
}
