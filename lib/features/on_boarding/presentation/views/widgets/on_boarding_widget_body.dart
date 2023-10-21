import 'package:flutter/material.dart';
import 'package:stips_demo/features/on_boarding/data/models/on_boarding_models.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_backgroundmain.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_onboarding_text.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onPageChanged,
      physics: const BouncingScrollPhysics(),
      controller: controller,
      itemCount: onBoardingData.length,
      itemBuilder: (context, index) {
        return Scaffold(
            body: Stack(
          children: [
            const CustomBackGround(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // the row widget which contain the indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // the indicator of all on boarding page
                    CustomSmoothPageIndicator(controller: controller)
                  ],
                ),
                // the space between the bottom of the column and the indicator
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
             CustomOnBoardingText(index: index,),
          ],
        ));
      },
    );
  }
}