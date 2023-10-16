 import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_strings.dart';
import 'package:stips_demo/core/utils/app_text_styles.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/widgets/on_boarding_widget_body.dart';
 class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Stack(
          children:[
                        OnBoardingWidgetBody(),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              
              children: [
                Container(padding:const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                  child: Text(APPsTRINGS.skip,
                  style:CustomTextStyle.poppins200style22.copyWith(color: Colors.white)),
                ),
              ],
            ),
            
            
              Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [              Center(child: Text(
                   "Welcome To Stips",
                   style: CustomTextStyle.poppins200style22.copyWith(fontSize: 25)
                       ,
                   textAlign: TextAlign.center,
                 ),),
                  Text(
                       "Explore the comfort with Stips in a smart way",
                       style: CustomTextStyle.poppins200style22.copyWith(fontSize: 16),
                       textAlign: TextAlign.center,
                     ),
                ],
              ),),

          ]   
        ),
      ),
    );
  }
}


