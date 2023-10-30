import 'package:flutter/material.dart';
import 'package:stips_demo/core/database/cache/cache_helper.dart';
import 'package:stips_demo/core/functions/delayed_navigate.dart';
import 'package:stips_demo/core/sevices/service_locator.dart';
import 'package:stips_demo/features/splash/presentation/views/widgets/custom_sized_box.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
  bool isOnBoardingVisited = getIt<CacheHelper>().getData(key: "isOnBoardingVisited")??false;
  if (isOnBoardingVisited==true) {
    delayedNavigate(context, "/signup"  );
  } else {
    delayedNavigate(context,"/onboarding");
  }
    
  super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSizedBox()
    );
  }
}