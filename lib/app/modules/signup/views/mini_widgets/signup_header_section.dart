import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../../config/AppTextStyle.dart';
import '../../../../widgets/back_icon_button.dart';

class SignupHeaderSection extends StatelessWidget {
  final VoidCallback? onBackTap;

  const SignupHeaderSection({
    Key? key,
    this.onBackTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 5),
          child: BackIconButton(
            onTap: onBackTap ?? () => Get.back(),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          AppText.createAnAccount,
          style: AppTextStyles.bold.copyWith(fontSize: 25),
        ),
        const SizedBox(height: 4),
        Text(
          AppText.joinUsToday,
          textAlign: TextAlign.center,
          style: AppTextStyles.regular.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
