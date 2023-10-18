import 'package:flutter/material.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_arrow_onboarding.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_onboarding_text.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/on_boarding_widget_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          OnBoardingWidgetBody(),
          const CustomOnBoardingText(),
          const CustomArrow(),
        ]),
      ),
    );
  }
}
