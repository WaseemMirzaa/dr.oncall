import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../widgets/back_icon_button.dart';

class ClinicalHeader extends StatelessWidget {
  final VoidCallback? onBackTap;

  const ClinicalHeader({
    Key? key,
    this.onBackTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 45.0, left: 8),
          child: BackIconButton(
            onTap: onBackTap ?? () => Get.back(),
          ),
        ),
        const SizedBox(height: 20),
        Text(AppText.clinicalPresentation,
            style: AppTextStyles.bold.copyWith(fontSize: 25)),
        const SizedBox(height: 4),
        // Padding(
        //   padding: const EdgeInsets.only(right: 23.0, left: 23.0),
        //   child: Text(
        //     Apptext.forgotDecs,
        //     textAlign: TextAlign.center,
        //     style: const TextStyle(
        //       color: AppColors.txtWhiteColor,
        //       fontSize: 13,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
