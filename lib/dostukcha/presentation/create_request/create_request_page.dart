import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../widgets/loading.dart';
import 'create_request_cubit.dart';

class CreateRequestPage extends StatelessWidget {
  const CreateRequestPage({
    super.key,
    required this.selectedSum,
    required this.selectedDays,
  });

  final String selectedSum;
  final String selectedDays;

  @override
  Widget build(BuildContext context) => BlocBuilder<CreateRequestCubit, CreateRequestState>(
      bloc: getIt<CreateRequestCubit>()..createRequest(double.tryParse(selectedSum) ?? 0, int.tryParse(selectedDays) ?? 0),
      builder: (context, state) {
        if (state.loading) {
          return const LoadingPage();
        }

        return const SizedBox();
      });
}
