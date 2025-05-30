import 'package:flutter/material.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/rounded_text_container.dart';

class ForgotForm extends StatelessWidget {
  final VoidCallback onSendTap;
  // final VoidCallback onForgotPasswordTap;

  const ForgotForm({
    Key? key,
    required this.onSendTap,
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
        const SizedBox(height: 20),
        RoundedTextContainer(
          text: AppText.send,
          color: AppColors.baseColor,
          onTap: onSendTap,
        ),
      ],
    );
  }
}
