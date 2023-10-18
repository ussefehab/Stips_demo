import 'package:flutter/material.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/consumed_icon_button_onboarding.dart';

class CustomArrow extends StatelessWidget {
  const CustomArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 247, 241, 241)),
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 213, 211, 211),
            ),
            child: 
            const ConsumedIconButtonOnBoarding(),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ]);
  }
}


