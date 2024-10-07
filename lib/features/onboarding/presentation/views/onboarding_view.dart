import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  OnboardingView({
    super.key,
  });

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Padding(
          //       padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          //       child: MaterialButton(
          //         child: const Text("${AppStrings.skip}."),
          //         onPressed: () {},
          //       )),
          // ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 10, right: 10),
          //     child: MaterialButton(
          //       child: const Text("Back"),
          //       onPressed: () {},
          //     ),
          //   ),
          // ),
          OnboardingWidgetBody()
        ],
      ),
    ));
  }
}
