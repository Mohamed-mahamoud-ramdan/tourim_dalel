import 'package:dalel/core/dataBases/cache_helper.dart';
import 'package:dalel/core/functions/naviagation.dart';
import 'package:dalel/core/route/app_route.dart';
import 'package:dalel/core/services/services_loactor.dart';
import 'package:dalel/core/utilies/app_colors.dart';
import 'package:dalel/core/utilies/app_strings.dart';
import 'package:dalel/core/utilies/app_text_styles.dart';
import 'package:dalel/main.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  void _navigateAfterDelay() {
    Future.delayed(const Duration(seconds: 3), () {
      final bool? isOnboardingVisited =
          getIt<CacheHelper>().getbool(key: isOnbardingvisited);

      if (isOnboardingVisited ?? false) {
        customNavigateRplace(context, RouteName.signUpView);
      } else {
        customNavigateRplace(context, RouteName.onboardingView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(),
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}
