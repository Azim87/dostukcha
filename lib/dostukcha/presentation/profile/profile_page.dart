import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'profile_cubit.dart';
import 'profile_state.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ProfileCubit, ProfileState>(
        bloc: getIt<ProfileCubit>()..getClientProfileData(),
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }

          return Screen(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    context.loc!.profile_page_private_data,
                    style: AppStyles.appBarTitleStyle,
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.loc!.profile_page_full_name.toUpperCase(),
                        style: AppStyles.text700,
                      ),
                      AppFormFieldWidget(
                        initialValue: state.clientProfileData?.name ?? '',
                        onChange: (df) {},
                      ),
                      AppFormFieldWidget(
                        initialValue: state.clientProfileData?.surname ?? '',
                        onChange: (df) {},
                      ),
                      if (state.clientProfileData?.middleName != null)
                        AppFormFieldWidget(
                          initialValue: state.clientProfileData?.middleName ?? '',
                          onChange: (df) {},
                        ),
                      Text(
                        context.loc!.profile_page_phone_number.toUpperCase(),
                        style: AppStyles.text700,
                      ),
                      AppFormFieldWidget(
                        initialValue: state.clientProfileData?.phoneNumbers?.first ?? '',
                        textInputType: TextInputType.phone,
                        onChange: (df) {},
                      ),
                      Text(
                        context.loc!.profile_page_birthdate.toUpperCase(),
                        style: AppStyles.text700,
                      ),
                      AppFormFieldWidget(
                        initialValue: state.clientProfileData?.birthDate ?? '',
                        textInputType: TextInputType.datetime,
                        onChange: (df) {},
                      ),
                      Text(
                        context.loc!.profile_page_iin.toUpperCase(),
                        style: AppStyles.text700,
                      ),
                      AppFormFieldWidget(
                        initialValue: state.clientProfileData?.iin ?? '',
                        textInputType: const TextInputType.numberWithOptions(decimal: true),
                        onChange: (df) {},
                      ),
                      Text(
                        context.loc!.profile_page_document_number.toUpperCase(),
                        style: AppStyles.text700,
                      ),
                      AppFormFieldWidget(
                        initialValue: state.clientProfileData?.documentNumber ?? '',
                        onChange: (df) {},
                      ),
                      Text(
                        context.loc!.profile_page_expire_date.toUpperCase(),
                        style: AppStyles.text700,
                      ),
                      AppFormFieldWidget(
                          initialValue: state.clientProfileData?.documentEndDate ?? '',
                          textInputType: const TextInputType.numberWithOptions(decimal: true),
                          onChange: (df) {}),
                      Text(
                        context.loc!.profile_page_issued_whom.toUpperCase(),
                        style: AppStyles.text700,
                      ),
                      AppFormFieldWidget(
                        initialValue: state.clientProfileData?.documentIssued ?? '',
                        onChange: (df) {},
                      ),
                      const SizedBox(height: 10)
                    ].withSpaceTopAndBetween(height: 15),
                  ),
                ],
              ),
            ),
          );
        },
      );
}
