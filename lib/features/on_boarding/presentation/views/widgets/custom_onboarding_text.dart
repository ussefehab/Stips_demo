import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_colors.dart';
import 'package:stips_demo/core/utils/app_text_styles.dart';
import 'package:stips_demo/features/on_boarding/data/models/on_boarding_models.dart';

class CustomOnBoardingText extends StatelessWidget {
  const CustomOnBoardingText({
    super.key, required this.index,
  });
  
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text (
                 onBoardingData[index].title,
                  style: CustomTextStyle.ptans700style28.copyWith(fontSize: 60),
                  
                
                ),
             ],
           ),
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text(onBoardingData[index].subTitle,
                  style: CustomTextStyle.ptans700style28.copyWith(fontSize: 60, ),
            textAlign: TextAlign.left,
                  
                ),
                                             Text(onBoardingData[index].subSubSubTitle,
                  style: CustomTextStyle.ptans700style28.copyWith(fontSize: 65, color: AppColors.purple),
            textAlign: TextAlign.left,
                  
                ),

             ],
           ),
                   Row(mainAxisAlignment: MainAxisAlignment.start,
                     children: [
       Text(onBoardingData[index].subSubTitle,
              style: CustomTextStyle.ptans700style28.copyWith(fontSize: 20, color: AppColors.offWhite),
            textAlign: TextAlign.left,
              
            ),
                     ],
                   ),
            const SizedBox(height: 150,),
          ],
        ),
    );
  }
}