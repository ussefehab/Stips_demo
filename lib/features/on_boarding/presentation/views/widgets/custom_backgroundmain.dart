import 'package:animate_gradient/animate_gradient.dart';
import'package:flutter/material.dart';
//import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class CustomBackGround extends StatelessWidget {
 const CustomBackGround({super.key});
 @override
 Widget build(BuildContext context) {
    return  AnimateGradient(
        primaryBegin: Alignment.topRight,
        primaryEnd: Alignment.bottomRight,
        secondaryBegin: Alignment.bottomRight,
        secondaryEnd: Alignment.topLeft,
        primaryColors: const [
          Color.fromARGB(255, 116, 11, 143),
          Color.fromARGB(255, 74, 17, 144),
        ],
        secondaryColors: const [
          Color.fromARGB(255, 116, 11, 143),
          Color.fromARGB(255, 74, 17, 144),
        ]);
 }
}