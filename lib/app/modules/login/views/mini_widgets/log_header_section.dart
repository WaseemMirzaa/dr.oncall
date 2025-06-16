import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../widgets/back_icon_button.dart';

class LoginHeaderSection extends StatelessWidget {
  final VoidCallback? onBackTap;

  const LoginHeaderSection({
    Key? key,
    this.onBackTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: BackIconButton(
              onTap: onBackTap ?? () => Get.back(),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text(AppText.loginWelcome,
            style: AppTextStyles.bold.copyWith(fontSize: 25)),
        const SizedBox(height: 4),
        Text(
          AppText.plzlogIn,
          style: AppTextStyles.regular.copyWith(fontSize: 13.5),
        ),
      ],
    );
  }
}
