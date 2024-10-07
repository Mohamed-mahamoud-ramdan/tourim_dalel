import 'package:dalel/core/functions/naviagation.dart';
import 'package:dalel/core/route/app_route.dart';
import 'package:dalel/core/utilies/app_colors.dart';
import 'package:dalel/core/utilies/app_strings.dart';
import 'package:dalel/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delyedNavigation();
    super.initState();
  }

  void delyedNavigation() {
    //////////////news
    Future.delayed(Duration(seconds: 3), () {
      customNavigate(context, RouteName.onboardingView);
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
