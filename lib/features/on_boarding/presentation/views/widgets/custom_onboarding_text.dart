import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_text_styles.dart';

class CustomOnBoardingText extends StatelessWidget {
  const CustomOnBoardingText({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 400,),
        
        
       Text (
         "   Welcome",
          style: CustomTextStyle.poppins200style22.copyWith(fontSize: 45),
        
        ),
       Text("To Stips",
          style: CustomTextStyle.poppins200style22.copyWith(fontSize: 45, ),
          
        ),
      ],
    );
  }
}