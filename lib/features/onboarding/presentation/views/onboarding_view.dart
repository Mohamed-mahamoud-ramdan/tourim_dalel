import 'package:dalel/core/utilies/app_strings.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [Text(AppStrings.skip), OnboardingWidgetBody()],
      ),
    ));
  }
}
