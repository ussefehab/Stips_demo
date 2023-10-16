import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_assets.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:  Image.asset(Assets.assetsImagesStipsSplash,
        fit: BoxFit.fill,)
      );
  }
}