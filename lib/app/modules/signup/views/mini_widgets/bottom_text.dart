import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../../config/AppTextStyle.dart';

class SignupBottomText extends StatelessWidget {
  final VoidCallback onLogInTap;

  const SignupBottomText({
    Key? key,
    required this.onLogInTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: AppText.AlreadyAccount,
            style: AppTextStyles.regular.copyWith(fontSize: 15),
          ),
          TextSpan(
            text: AppText.logIn,
            style: AppTextStyles.medium.copyWith(fontSize: 15),
            recognizer: TapGestureRecognizer()..onTap = onLogInTap,
          ),
        ],
      ),
    );
  }
}
