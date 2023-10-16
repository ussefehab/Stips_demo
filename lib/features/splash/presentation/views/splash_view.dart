import 'package:flutter/material.dart';
import 'package:stips_demo/core/functions/navigation.dart';
import 'package:stips_demo/core/utils/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:  Image.asset(Assets.assetsImagesStipsSplash,
        fit: BoxFit.fill,)
      ),
    );
  }
}
  void delayedNavigate(context) {
    Future.delayed(const Duration(seconds:3 ),(){
      customNavigate(context,"/onboarding");
    }
    );
  }