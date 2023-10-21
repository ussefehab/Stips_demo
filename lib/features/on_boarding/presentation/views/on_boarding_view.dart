import 'package:flutter/material.dart';
import 'package:stips_demo/core/functions/navigation.dart';
import 'package:stips_demo/features/on_boarding/data/models/on_boarding_models.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_arrow_onboarding.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_gradient_btn.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/on_boarding_widget_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({
    super.key,
  });

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          OnBoardingWidgetBody(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            controller: _controller,
          ),
          currentIndex == onBoardingData.length-1?
          CustomGradientBtn(
            onTap: (){
              customReplacementNavigate(context, "/signup");
            },
          ):
          CustomArrow(onPressed: () {
            _controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.bounceIn);
          }),
        ]),
      ),
    );
  }
}
