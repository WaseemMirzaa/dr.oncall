import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../../config/AppTextStyle.dart';
import '../../../../widgets/back_icon_button.dart';

class ForgotHeaderSection extends StatelessWidget {
  final VoidCallback? onBackTap;

  const ForgotHeaderSection({
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
            padding: const EdgeInsets.only(top: 25.0, left: 5),
            child: BackIconButton(
              onTap: onBackTap ?? () => Get.back(),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          AppText.forgot,
          style: AppTextStyles.bold.copyWith(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 23.0, left: 23.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppText.forgotDecs,
              textAlign: TextAlign.center,
              style: AppTextStyles.regular.copyWith(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
