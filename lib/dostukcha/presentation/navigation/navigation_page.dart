import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/di/injection.dart';
import '../../core/util/utils.dart';
import 'navigation_cubit.dart';
import 'navigation_state.dart';

const double ICON_HEIGHT = 50;
const double DEFAULT_HEIGHT = 35;
const double FONT_SIZE = 9;

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final _pageViewController = PageController();
  late int _currentIndex = 0;
  final cubit = getIt<NavigationCubit>();

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<NavigationCubit, NavigationState>(
        bloc: cubit..setNavigationPages(),
        builder: (context, state) => Scaffold(
          backgroundColor: Palette.white,
          bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: FONT_SIZE,
            unselectedFontSize: FONT_SIZE,
            currentIndex: _currentIndex,
            backgroundColor: Palette.containerBackroundColor,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              if (state.isQrCodeExist)
                BottomNavigationBarItem(
                  label: context.loc!.main_page,
                  icon: SvgPicture.asset(
                    Assets.home_unselected,
                    height: DEFAULT_HEIGHT,
                  ),
                  activeIcon: SvgPicture.asset(
                    Assets.home_selected,
                    height: ICON_HEIGHT,
                  ),
                )
              else
                BottomNavigationBarItem(
                  label: context.loc!.calculator,
                  icon: SvgPicture.asset(
                    Assets.calculator_unselected,
                    height: DEFAULT_HEIGHT,
                  ),
                  activeIcon: SvgPicture.asset(
                    Assets.calculator_selected,
                    height: ICON_HEIGHT,
                  ),
                ),
              if (state.isClientIdExist)
                BottomNavigationBarItem(
                  label: context.loc!.profile,
                  icon: SvgPicture.asset(
                    Assets.account_unselected,
                    height: DEFAULT_HEIGHT,
                  ),
                  activeIcon: SvgPicture.asset(
                    Assets.account_selected,
                    height: ICON_HEIGHT,
                  ),
                ),
              BottomNavigationBarItem(
                label: context.loc!.documents,
                icon: SvgPicture.asset(
                  Assets.document_unselected,
                  height: DEFAULT_HEIGHT,
                ),
                activeIcon: SvgPicture.asset(
                  Assets.document_selected,
                  height: ICON_HEIGHT,
                ),
              ),
              BottomNavigationBarItem(
                label: context.loc!.support,
                icon: SvgPicture.asset(
                  Assets.support_unselected,
                  height: DEFAULT_HEIGHT,
                ),
                activeIcon: SvgPicture.asset(
                  Assets.support_selected,
                  height: ICON_HEIGHT,
                ),
              ),
            ],
            onTap: (index) => _animateToPage(index),
          ),
          body: _buildPageViewBody(state),
        ),
      );

  void _animateToPage(int index) => _pageViewController.animateToPage(
        index,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );

  PageView _buildPageViewBody(NavigationState state) => PageView(
        controller: _pageViewController,
        physics: const NeverScrollableScrollPhysics(),
        children: state.pages!,
        onPageChanged: (pageIndex) => setState(() => _currentIndex = pageIndex),
      );
}
