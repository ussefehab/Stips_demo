import 'package:flutter/material.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/get_buttons.dart';
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
          GetButton(currentIndex: currentIndex, controller: _controller)
        ]),
      ),
    );
  }
}
