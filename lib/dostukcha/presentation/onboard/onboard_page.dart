import 'package:flutter/material.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/extensions.dart';
import '../../core/util/palette.dart';
import '../../core/util/styles.dart';
import '../widgets/widgets.dart';
import 'onboard_model.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final PageController _pageController = PageController();
  final prefs = getIt<AppPrefs>();

  int currentIndex = 0;

  Future<void> saveOnBoardingState() async => prefs.setValue<bool>(SharedKeys.ONBOARD_KEY, true);

  void _onPageChanged(int index) => setState(() => currentIndex = index);

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: _buildNextButton(),
        backgroundColor: Palette.white,
        body: SafeArea(child: _buildOnboardingBody()),
      );

  Widget _buildOnboardingIndication() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: OnboardData()
            .mapIndexed(
              (_, index) => Padding(
                padding: const EdgeInsets.all(2),
                child: OnboardIndicator(
                  positionIndex: index,
                  currentIndex: currentIndex,
                ),
              ),
            )
            .toList(),
      );

  Widget _buildOnboardingBody() => SizedBox(
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: _pageController,
          onPageChanged: (val) => _onPageChanged(val),
          children: OnboardData()
              .mapIndexed(
                (item, index) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: currentIndex == 0 ? MainAxisAlignment.end : MainAxisAlignment.spaceBetween,
                      children: [
                        if (currentIndex != 0) _buildBackIconButton(),
                        if (currentIndex != 5) _buildSkipButton(),
                      ],
                    ),
                    const SizedBox(height: 23),
                    Center(child: Image(image: AssetImage(item.gifPath), height: 285)),
                    _buildOnboardingIndication(),
                    const SizedBox(height: 23),
                    Center(
                      child: Text(
                        item.title,
                        style: AppStyles.titleStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item.subtitle,
                      textAlign: TextAlign.center,
                      style: AppStyles.subtitleStyle,
                    ),
                  ].withSpaceBetween(height: 6),
                ),
              )
              .toList(),
        ),
      );

  Widget _buildNextButton() => AppButton(
        onPressed: () {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeIn,
          );

          if (currentIndex == 5) {
            Navigation.route.goRouter.go(Navs.phone_number);
            saveOnBoardingState();
          }
          //Navigation.route.goRouter.go('/liveness');
        },
        value: true,
        text: context.loc!.further,
      );

  Widget _buildSkipButton() => TextButton(
        onPressed: () {
          Navigation.route.goRouter.go(Navs.phone_number);
          saveOnBoardingState();
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Text(
            context.loc!.onboard_skip,
            style: AppStyles.skipStyle,
          ),
        ),
      );

  Widget _buildBackIconButton() => IconButton(
        onPressed: () {
          _pageController.previousPage(
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeIn,
          );
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Palette.black,
        ),
      );

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
