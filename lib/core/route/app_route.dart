import 'package:dalel/features/auth/presentation/views/sign_up.dart';
import 'package:dalel/features/auth/presentation/views/signin.dart';
import 'package:dalel/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel/features/splach/presentation/views/slpash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RouteName.splashView,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: RouteName.onboardingView,
      builder: (context, state) => OnboardingView(),
    ),
    GoRoute(
      path: RouteName.signUpView,
      builder: (context, state) => SignUpView(),
    ),
    GoRoute(
      path: RouteName.Signin,
      builder: (context, state) {
        return Signin();
      },
    )
  ],
);

abstract class RouteName {
  static String splashView = "/";
  static String onboardingView = "/OnboardingView";
  static String signUpView = "/signUpView";
  static String Signin = "/Signin";
}
