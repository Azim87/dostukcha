import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../app/app_cubit.dart';
import '../app/app_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final _appCubit = getIt<AppCubit>();

  @override
  Widget build(BuildContext context) => BlocBuilder<AppCubit, AppState>(
        bloc: _appCubit,
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
          drawer: _buildDrawer(),
          body: _buildBody(),
        ),
      );

  Widget _buildDrawer() => Drawer(
        child: Column(
          children: [
            AppBar(
              leading: IconButton(icon: const Icon(Icons.close), onPressed: () => {}),
            ),
          ],
        ),
      );

  Widget _buildBody() => const Center(child: Text('My home page'));
}
