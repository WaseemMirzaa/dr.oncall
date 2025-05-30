import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../widgets/back_icon_button.dart';

class AboutHeader extends StatelessWidget {
  final VoidCallback? onBackTap;

  const AboutHeader({
    Key? key,
    this.onBackTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 25),
            child: BackIconButton(
              onTap: onBackTap ?? () => Get.back(),
            ),
          ),
          const SizedBox(height: 20),
          Text(AppText.about, style: AppTextStyles.bold.copyWith(fontSize: 25)),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(right: 23.0, left: 23.0),
            child: Text(AppText.aboutDesc,
                textAlign: TextAlign.center, style: AppTextStyles.regular),
          ),
        ],
      ),
    );
  }
}
