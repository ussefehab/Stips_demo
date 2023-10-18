import 'package:flutter/material.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_backgroundmain.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      controller: _controller,
      itemCount: 3,
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
                    CustomSmoothPageIndicator(controller: _controller)
                  ],
                ),
                // the space between the bottom of the column and the indicator
                const SizedBox(
                  height: 20,
                ),

              ],
            ),
          ],
        ));
      },
    );
  }
}
