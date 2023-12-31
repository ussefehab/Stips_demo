import 'package:go_router/go_router.dart';
import 'package:stips_demo/features/auth/pesentation/views/log_in.dart';
import 'package:stips_demo/features/auth/pesentation/views/sign_up.dart';
import 'package:stips_demo/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:stips_demo/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
GoRoute(path: "/",
builder: (context, state) =>const SplashView(),
),
GoRoute(path: "/onboarding",
builder: (context, state) =>const OnBoardingView(),
),
GoRoute(path: "/signup",
builder: (context, state) =>const SignUp(),
),
GoRoute(path: "/signin",
builder: (context, state) =>const SignIn(),
),
]);