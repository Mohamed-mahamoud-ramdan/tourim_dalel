import 'package:dalel/core/functions/naviagation.dart';
import 'package:dalel/core/route/app_route.dart';
import 'package:dalel/core/utilies/app_colors.dart';
import 'package:dalel/core/utilies/app_strings.dart';
import 'package:dalel/core/widegts/custom_bt.dart';
import 'package:dalel/features/onboarding/data_layer/modal/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:dalel/core/utilies/app_text_styles.dart';

class OnboardingWidgetBody extends StatefulWidget {
  OnboardingWidgetBody({super.key});

  @override
  State<OnboardingWidgetBody> createState() => _OnboardingWidgetBodyState();
}

class _OnboardingWidgetBodyState extends State<OnboardingWidgetBody> {
  final PageController pageController = PageController(initialPage: 0);

  int indexs = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: PageView.builder(
        onPageChanged: (value) {
          print(value);
          setState(() {});
          indexs = value;
        },
        controller: pageController,
        itemCount: onboardingList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 290,
                height: 343,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          onboardingList[index].imagePath,
                        ),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 28,
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
                  onboardingList[index].title,
                  style: CustomTextStyles.poppins400style20
                      .copyWith(fontWeight: FontWeight.w800, fontSize: 22),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              (indexs == 2)
                  ? Column(
                      children: [
                        TwoCustomButton(
                          text: "sign Up ",
                          onPressed: () {
                            customNavigate(context, RouteName.signUpView);
                          },
                        )
                      ],
                    )
                  : Column(
                      children: [
                        CustomButton(
                          pageController: pageController,
                          text: AppStrings.next,
                        ),
                        TextButton(
                            onPressed: () {
                              customNavigate(context, RouteName.Signin);
                            },
                            child: Text("Login now"))
                      ],
                    )
            ],
          );
        },
      ),
    );
  }
}
