import 'package:dalel/core/services/services_loactor.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/sign_up.dart';
import 'package:dalel/features/auth/presentation/views/signin.dart';
import 'package:dalel/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel/features/splach/presentation/views/slpash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RouteName.splashView,
      builder: (context, state) => SignUpView(),
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
        return BlocProvider(
          create: (context) {
            return getIt<AuthCubit>();
          },
          child: Signin(),
        );
      },
    ),
    GoRoute(
      path: RouteName.signUpView,
      builder: (context, state) {
        return BlocProvider(
          create: (context) {
            return getIt<AuthCubit>();
          },
          child: SignUpView(),
        );
      },
    )
  ],
);

abstract class RouteName {
  static String splashView = "/";
  static String authCubit = "authCubit";
  static String onboardingView = "/OnboardingView";
  static String signUpView = "/signUpView";
  static String Signin = "/Signin";
}
