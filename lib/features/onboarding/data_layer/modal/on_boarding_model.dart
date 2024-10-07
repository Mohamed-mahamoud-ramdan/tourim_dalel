import 'package:dalel/core/utilies/app_assest.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subtitle;

  OnBoardingModel(
      {required this.imagePath, required this.title, required this.subtitle});
}

List<OnBoardingModel> onboardingList = [
  OnBoardingModel(
      imagePath: AppAssets.onBoarding,
      title:
          "required this.imagePath, required this.title, required this.subtit",
      subtitle:
          "required this.imagePath, required this.title, required this.subtit"),
  OnBoardingModel(
      imagePath: AppAssets.onBoarding1,
      title:
          "required this.imagePath, required this.title, required this.subtit",
      subtitle:
          "required this.imagePath, required this.title, required this.subtit"),
  OnBoardingModel(
      imagePath: AppAssets.onBoarding2,
      title:
          "required this.imagePath, required this.title, required this.subtit",
      subtitle:
          "required this.imagePath, required this.title, required this.subtit"),
];
