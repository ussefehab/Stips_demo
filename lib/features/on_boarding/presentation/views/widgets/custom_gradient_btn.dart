import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_text_styles.dart';
class CustomGradientBtn extends StatelessWidget {
  const CustomGradientBtn({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(onTap: onTap,
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20) ),
                gradient: LinearGradient(begin: Alignment.topLeft,
                end:Alignment.bottomRight ,
                  colors: [
                  Color.fromARGB(255, 206, 25, 155),
                  Color.fromARGB(255, 115, 57, 203)
                ])
              ),
              child: Center(child :Text("Get Started",
              style: CustomTextStyle.ptans900style28.copyWith(fontSize: 22),
              ),)),
            ),
          
          const SizedBox(height: 40,)
        ],
      ),
    );
  }
}