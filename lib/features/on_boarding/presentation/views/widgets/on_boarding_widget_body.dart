import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_colors.dart';
import 'package:stips_demo/core/utils/app_text_styles.dart';
import 'package:stips_demo/features/on_boarding/data/models/on_boarding_models.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_backgroundmain.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/custom_smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody( {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onPageChanged,
      physics: const BouncingScrollPhysics(),
      controller: controller,
      itemCount: onBoardingData.length,
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
                    CustomSmoothPageIndicator(controller: controller)
                  ],
                ),
                // the space between the bottom of the column and the indicator
                const SizedBox(
                  height: 20,
                ),

              ],
            ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          
                          
                          
                         Row(mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text (
                               onBoardingData[index].title,
                                style: CustomTextStyle.ptans900style28.copyWith(fontSize: 60),
                                maxLines: 1,
                              
                              ),
                           ],
                         ),
                         Row(mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text(onBoardingData[index].subTitle,
                                style: CustomTextStyle.ptans900style28.copyWith(fontSize: 60, ),
                          textAlign: TextAlign.left,
                                maxLines: 1,
                              ),
                                                           Text(onBoardingData[index].subSubSubTitle,
                                style: CustomTextStyle.ptans900style28.copyWith(fontSize: 65, color: AppColors.purple),
                          textAlign: TextAlign.left,
                                maxLines: 1,
                              ),

                           ],
                         ),
                                 Row(mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                     Text(onBoardingData[index].subSubTitle,
                            style: CustomTextStyle.ptans900style28.copyWith(fontSize: 20, color: AppColors.offWhite),
                          textAlign: TextAlign.left,
                            maxLines: 1,
                          ),
                                   ],
                                 ),
                          const SizedBox(height: 150,),
                        ],
                      ),
                  ),

          ],
        ));
      },
    );
  }
}
