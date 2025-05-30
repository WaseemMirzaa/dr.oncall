import 'package:flutter/material.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../../config/AppTextStyle.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/rounded_text_container.dart';

class SignUpForm extends StatelessWidget {
  final VoidCallback onLoginTap;
  // final VoidCallback onForgotPasswordTap;

  const SignUpForm({
    Key? key,
    required this.onLoginTap,
    // required this.onForgotPasswordTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextField(
          hintText: 'Email',
        ),
        const SizedBox(height: 16),
        const CustomTextField(
          hintText: 'Username',
        ),
        const SizedBox(height: 16),
        const CustomTextField(
          hintText: 'Phone',
        ),
        const SizedBox(height: 16),
        const CustomTextField(
          hintText: 'Password',
          isPassword: true,
        ),
        const SizedBox(height: 20),
        RoundedTextContainer(
          text: AppText.signUp,
          color: AppColors.baseColor,
          onTap: onLoginTap,
        ),
        const SizedBox(height: 15),
        Text(
          AppText.policyAgreement,
          textAlign: TextAlign.center,
          style: AppTextStyles.regular.copyWith(fontSize: 11),
        ),
      ],
    );
  }
}
