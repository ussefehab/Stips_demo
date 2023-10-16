import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_assets.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_smooth_page_controller.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Scaffold(
              body: Stack(
            children: [

                 SizedBox.expand(
                  child: ImageFiltered(imageFilter: ImageFilter.blur( sigmaX: 10,
                  sigmaY: 15),                  child:
                   Image.asset(Assets.assetsImagesStipsOnboardingLc,
                      fit: BoxFit.fill),
                      )


                ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomSmoothPageIndecator(controller: _controller)
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ));
        },
      ),
    );
  }
}
