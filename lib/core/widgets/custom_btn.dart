import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_colors.dart';
import 'package:stips_demo/core/utils/app_strings.dart';
import 'package:stips_demo/core/utils/app_text_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        
      ), child:Text(APPsTRINGS.skip,
      style: CustomTextStyle.poppins200style22.copyWith(fontWeight: FontWeight.w400),)),
    );
  }
}