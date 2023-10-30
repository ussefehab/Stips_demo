import 'package:flutter/material.dart';
import 'package:stips_demo/core/database/cache/cache_helper.dart';

import 'package:stips_demo/core/routes/app_route.dart';
import 'package:stips_demo/core/sevices/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Stips());
}

class Stips extends StatelessWidget {
  const Stips({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
