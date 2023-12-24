import 'package:flutter/material.dart';
import 'package:stips_demo/core/utils/app_text_styles.dart';
import 'package:stips_demo/features/auth/pesentation/views/function/get_border_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});
final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: CustomTextStyle.poppins200style22,
        enabledBorder: getBoredrStyle(),
        border: getBoredrStyle(),
        focusedBorder: getBoredrStyle()
      ),
    );
  }


}