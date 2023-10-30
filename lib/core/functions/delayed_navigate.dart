import 'package:stips_demo/core/functions/navigation.dart';

void delayedNavigate(context,path) {
  Future.delayed(const Duration(seconds: 3), () {
    customReplacementNavigate(context, path);
  });
}
