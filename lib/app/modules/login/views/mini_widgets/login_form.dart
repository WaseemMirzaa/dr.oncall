import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/rounded_text_container.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onLoginTap;
  final VoidCallback onForgotPasswordTap;

  const LoginForm({
    Key? key,
    required this.onLoginTap,
    required this.onForgotPasswordTap,
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
          hintText: 'Password',
          isPassword: true,
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: onForgotPasswordTap,
          child: Text(AppText.forgotPassword,
              style: AppTextStyles.medium.copyWith(
                fontSize: 14,
              )),
        ),
        const SizedBox(height: 20),
        RoundedTextContainer(
          text: AppText.logIn,
          color: AppColors.baseColor,
          onTap: onLoginTap,
        ),
      ],
    );
  }
}
