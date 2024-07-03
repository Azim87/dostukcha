import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../core/logger/logger.dart';
import '../widgets/widgets.dart';
import 'operator_answer_await_cubit.dart';
import 'operator_answer_await_state.dart';

class OperatorAnswerAwaitPage extends StatefulWidget {
  const OperatorAnswerAwaitPage({super.key, required this.expiredTime});

  final String expiredTime;

  @override
  State<OperatorAnswerAwaitPage> createState() => _OperatorAnswerAwaitPageState();
}

class _OperatorAnswerAwaitPageState extends State<OperatorAnswerAwaitPage> with WidgetsBindingObserver {
  final cubit = getIt<OperatorAnswerAwaitCubit>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    cubit.getExpiredTime(widget.expiredTime).whenComplete(() => cubit.getOperatorAnswerAwaitSettings());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      // case AppLifecycleState.inactive:
      //   Logger.info('AppLifecycleState.inactive:');
      //   cubit.removeItemFromOperators();
      //   break;
      case AppLifecycleState.detached:
        Logger.info('AppLifecycleState.detached:');
        cubit.removeItemFromOperators();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<OperatorAnswerAwaitCubit, OperatorAnswerAwaitState>(
        bloc: cubit,
        builder: (context, state) {
          if (state.loading) {
            return LoadingPage(
              isText: state.loadingOperatorAwait,
            );
          }

          return Screen(body: _buildBody());
        },
      );

  Widget _buildBody() => const SizedBox();
}
