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
      path: RouteName.OnboardingView,
      builder: (context, state) {
        return OnboardingView();
      },
    )
  ],
);

abstract class RouteName {
  static String splashView = "/";
  static String OnboardingView = "/OnboardingView";
}
