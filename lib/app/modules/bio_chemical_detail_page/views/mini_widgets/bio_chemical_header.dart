import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../widgets/back_icon_button.dart';
import '../../../../widgets/custom_header.dart';

class BioChemicalHeader extends StatelessWidget {
  final VoidCallback? onBackTap;

  const BioChemicalHeader({
    super.key,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: CommonTitleSection(
        title: AppText.acuteHeartFailure,
      ),
    );

    //   Padding(
    //   padding: const EdgeInsets.only(top: 10.0),
    //   child: Column(
    //     // crossAxisAlignment: CrossAxisAlignment.start,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       GestureDetector(
    //         onTap: () {
    //           Get.back();
    //         },
    //         child: Padding(
    //           padding: const EdgeInsets.only(top: 25.0, left: 15),
    //           child: BackIconButton(
    //             onTap: onBackTap ?? () => Get.back(),
    //           ),
    //         ),
    //       ),
    //       const SizedBox(height: 20),
    //       Text(AppText.acuteHeartFailure,
    //           style: AppTextStyles.bold.copyWith(fontSize: 25)),
    //       const SizedBox(height: 4),
    //       // Padding(
    //       //   padding: const EdgeInsets.only(right: 23.0, left: 23.0),
    //       //   child: Text(
    //       //     Apptext.forgotDecs,
    //       //     textAlign: TextAlign.center,
    //       //     style: const TextStyle(
    //       //       color: AppColors.txtWhiteColor,
    //       //       fontSize: 13,
    //       //     ),
    //       //   ),
    //       // ),
    //     ],
    //   ),
    // );
  }
}
