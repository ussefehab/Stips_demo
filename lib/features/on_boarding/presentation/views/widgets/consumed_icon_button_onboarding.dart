import 'package:flutter/material.dart';
class ConsumedIconButtonOnBoarding extends StatelessWidget {
  const ConsumedIconButtonOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 30,
          color: Color.fromARGB(255, 58, 58, 58),
        ));
  }
}