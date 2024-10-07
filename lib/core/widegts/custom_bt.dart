import 'package:dalel/core/utilies/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.color,
      required this.text,
      required this.pageController});
  final Color? color;
  final String text;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color ?? AppColors.primaryColor),
          onPressed: () {
            pageController.nextPage(
                // ignore: prefer_const_constructors
                duration: Duration(seconds: 1),
                curve: Curves.decelerate);
          },
          child: Text(text)),
    );
  }
}

class TwoCustomButton extends StatelessWidget {
  TwoCustomButton({super.key, this.color, required this.text, this.onPressed});
  final Color? color;
  final String text;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color ?? AppColors.primaryColor),
          onPressed: onPressed,
          child: Text(text)),
    );
  }
}
