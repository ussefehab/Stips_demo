
import 'package:flutter/material.dart';

import 'package:stips_demo/core/routes/app_route.dart';

void main() {
  runApp(const Stips());
}

class Stips extends StatelessWidget {
  const Stips({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router (
      debugShowCheckedModeBanner: false,
      routerConfig: router,

    );
  }
}
