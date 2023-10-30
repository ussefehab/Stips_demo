import 'package:flutter/material.dart';
import 'package:stips_demo/core/functions/navigation.dart';
import 'package:stips_demo/features/on_boarding/data/models/on_boarding_models.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/functions/on_boarding.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_arrow_onboarding.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_gradient_btn.dart';

class GetButton extends StatelessWidget {
  const GetButton(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return CustomGradientBtn(
        onTap: () {
          onBoardingVisited();
          customReplacementNavigate(context, "/signup");
        },
      );
    } else {
      return CustomArrow(onPressed: () {
        controller.nextPage(
            duration: const Duration(milliseconds: 200),
            curve: Curves.bounceIn);
      });
    }
  }


}
