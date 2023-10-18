import 'package:flutter/material.dart';
import 'package:stips_demo/core/functions/navigation.dart';
import 'package:stips_demo/features/splash/presentation/views/widgets/custom_sized_box.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      (){
         customReplacementNavigate(context,"/onboarding")  ;
      }
    );
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSizedBox()
    );
  }
}