// ignore_for_file: no_logic_in_create_state, strict_raw_type

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_widget.dart';

abstract class StateCubitWidget<C extends Cubit<S>, S> extends StatefulWidget {
  StateCubitWidget({super.key, this.create});

  final C Function(BuildContext context)? create;

  final store = _StateCubitStore<C, S>();

  BuildContext get context => store.context!;

  S get state => store.state!;

  C get cubit => store.cubit!;

  void initState() {}

  @protected
  Widget build(BuildContext context);

  @override
  State<StatefulWidget> createState() => _StateCubitWidgetState(create);
}

class _StateCubitWidgetState<C extends Cubit<S>, S>
    extends State<StateCubitWidget> {
  _StateCubitWidgetState(this.create);

  final C Function(BuildContext context)? create;

  @override
  void initState() {
    super.initState();
    widget.initState();
  }

  @override
  Widget build(BuildContext context) => CubitWidget<C, S>(
        create: create,
        builder: (context, state, cubit) {
          widget.store
            ..context = context
            ..state = state
            ..cubit = cubit;
          return widget.build(context);
        },
      );

  @override
  void dispose() {
    widget.store.clear();
    super.dispose();
  }
}

class _StateCubitStore<C extends Cubit<S>, S> {
  BuildContext? context;
  C? cubit;
  S? state;

  void clear() {
    context = null;
    cubit = null;
    state = null;
  }
}
