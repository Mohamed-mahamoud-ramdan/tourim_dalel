import 'package:dalel/core/utilies/app_colors.dart';
import 'package:dalel/core/utilies/app_strings.dart';
import 'package:dalel/core/utilies/app_text_styles.dart';
import 'package:dalel/core/widegts/custom_bt.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isTermsAccepted = false;

  void _onCheckboxChanged(bool newValue) {
    setState(() {
      isTermsAccepted = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const WelcomeText(),
          const SliverToBoxAdapter(
            child: CustomTextFormfield(labelText: "First Name"),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFormfield(labelText: "Last Name"),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFormfield(labelText: "Email"),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFormfield(labelText: "Password"),
          ),
          SliverToBoxAdapter(
            child: TermsCondition(
              isAccepted: isTermsAccepted,
              onChanged: _onCheckboxChanged,
            ),
          ),
          SliverToBoxAdapter(
            child: GetCustomButton(isEnabled: isTermsAccepted),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "already have an account",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                TextButton(
                    onPressed: () {
                       
                    },
                    child: Text(
                      "sing in ",
                      style: TextStyle(
                          decoration: TextDecoration.combine(
                              [TextDecoration.underline])),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          AppStrings.welcome,
          style: CustomTextStyles.pacifico700style32,
        ),
      ),
    );
  }
}

class CustomTextFormfield extends StatelessWidget {
  const CustomTextFormfield({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          labelText: labelText,
        ),
      ),
    );
  }
}

class TermsCondition extends StatelessWidget {
  const TermsCondition({
    super.key,
    required this.isAccepted,
    required this.onChanged,
  });

  final bool isAccepted;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Checkbox(
            value: isAccepted,
            onChanged: (value) => onChanged(value ?? false),
          ),
          const Text("Check this if you are agree"),
        ],
      ),
    );
  }
}

class GetCustomButton extends StatelessWidget {
  const GetCustomButton({super.key, required this.isEnabled});

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return TwoCustomButton(
      text: "Sign Up",
      color: isEnabled ? AppColors.deepBrown : Colors.grey,
    );
  }
}
