import 'package:flutter/material.dart';

import '../../core/util/utils.dart';
import 'onboard_indicator.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key, required this.isKg});

  final bool isKg;

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int currentIndex = 0;

  final assetsRuList = [Assets.banner1, Assets.banner2, Assets.banner3];
  final assetsKgList = [Assets.banner_kg1, Assets.banner_kg2, Assets.banner_kg3];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: PageView.builder(
            padEnds: false,
            pageSnapping: false,
            itemCount: widget.isKg ? assetsKgList.length : assetsRuList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  widget.isKg ? assetsKgList[index] : assetsRuList[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
            controller: PageController(viewportFraction: 0.8),
            onPageChanged: (index) => setState(() => currentIndex = index),
          ),
        ),
        const SizedBox(height: 12),
        _buildOnboardingIndication(currentIndex),
      ],
    );
  }

  Widget _buildOnboardingIndication(int _index) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: assetsRuList
            .mapIndexed(
              (_, index) => Padding(
                padding: const EdgeInsets.all(2),
                child: OnboardIndicator(
                  positionIndex: index,
                  currentIndex: _index,
                ),
              ),
            )
            .toList(),
      );
}
