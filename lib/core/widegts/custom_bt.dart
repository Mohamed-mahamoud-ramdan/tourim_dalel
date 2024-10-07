import 'package:dalel/core/utilies/app_colors.dart';
import 'package:dalel/core/utilies/app_strings.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.color, required this.text});
  final Color? color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color ?? AppColors.primaryColor),
          onPressed: () {},
          child: Text(text)),
    );
  }
}
