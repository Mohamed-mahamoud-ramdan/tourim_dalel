import 'package:dalel/core/utilies/app_assest.dart';
import 'package:dalel/core/utilies/app_colors.dart';
import 'package:dalel/core/utilies/app_strings.dart';
import 'package:dalel/core/widegts/custom_bt.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:dalel/core/utilies/app_text_styles.dart';

class OnboardingWidgetBody extends StatelessWidget {
  OnboardingWidgetBody({super.key});
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 290,
                height: 343,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          AppAssets.onBoarding1,
                        ),
                        fit: BoxFit.fill)),
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(dotColor: AppColors.deepBrown),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Explore the history with dalel in a smart way ",
                  style: CustomTextStyles.poppins400style20
                      .copyWith(fontWeight: FontWeight.w800, fontSize: 22),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                text: AppStrings.next,
              ),
            ],
          );
        },
      ),
    );
  }
}
