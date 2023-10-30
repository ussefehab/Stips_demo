  import 'package:stips_demo/core/database/cache/cache_helper.dart';
import 'package:stips_demo/core/sevices/service_locator.dart';

void onBoardingVisited() {
    getIt<CacheHelper>().saveData(key: "isOnBoardingVisited",value: true);
  }