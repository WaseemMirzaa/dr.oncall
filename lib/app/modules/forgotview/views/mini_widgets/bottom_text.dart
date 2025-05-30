import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';

class ForgotBottomText extends StatelessWidget {
  final VoidCallback onLoginTap;

  const ForgotBottomText({
    Key? key,
    required this.onLoginTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: AppText.back,
            style: AppTextStyles.regular.copyWith(fontSize: 14),
          ),
          TextSpan(
            text: AppText.logIn,
            style: AppTextStyles.bold.copyWith(fontSize: 14),
            recognizer: TapGestureRecognizer()..onTap = onLoginTap,
          ),
        ],
      ),
    );
  }
}
