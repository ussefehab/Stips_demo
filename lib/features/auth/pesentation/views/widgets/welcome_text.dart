import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_strings.dart';
import 'package:stips_demo/core/utils/app_text_styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      child: Text(APPsTRINGS.welcome,
      style: CustomTextStyle.poppins200style22,),
    );
  }
}