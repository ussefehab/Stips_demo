

import 'package:flutter/material.dart';
class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key,  this.btnText,  this.onPressed, this.color,});
  final Color? color ;
  final String? btnText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),

    );
  }
} 
