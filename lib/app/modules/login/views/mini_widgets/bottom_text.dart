import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';

class LoginBottomText extends StatelessWidget {
  final VoidCallback onSignUpTap;

  const LoginBottomText({
    Key? key,
    required this.onSignUpTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: AppText.dontHaveAcount,
            style: AppTextStyles.regular.copyWith(fontSize: 14),
          ),
          TextSpan(
            text: AppText.signUp,
            style: AppTextStyles.medium.copyWith(fontSize: 14),
            recognizer: TapGestureRecognizer()..onTap = onSignUpTap,
          ),
        ],
      ),
    );
  }
}
