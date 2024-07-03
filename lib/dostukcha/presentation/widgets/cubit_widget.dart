import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';

class CubitWidget<C extends Cubit<S>, S> extends BlocProvider<C> {
  CubitWidget({
    super.key,
    required Widget Function(BuildContext context, S state, C cubit) builder,
    C Function(BuildContext context)? create,
  }) : super(
          create: (context) => create != null ? create(context) : getIt<C>(),
          child: BlocBuilder<C, S>(
            builder: (context, state) => builder(
              context,
              state,
              context.watch(),
            ),
          ),
        );
}
