import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../widgets/loading.dart';
import 'liveness_cubit.dart';
import 'liveness_state.dart';

class LivenessPage extends StatefulWidget {
  const LivenessPage({super.key});

  @override
  State<LivenessPage> createState() => _LivenessPageState();
}

class _LivenessPageState extends State<LivenessPage> {
  final _cubit = getIt<LivenessCubit>();

  @override
  Widget build(BuildContext context) => BlocBuilder<LivenessCubit, LivenessState>(
        bloc: _cubit..startLiveness(),
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }
          return const Scaffold();
        },
      );
}
