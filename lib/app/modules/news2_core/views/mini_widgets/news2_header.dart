import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../widgets/back_icon_button.dart';

class News2Header extends StatelessWidget {
  final VoidCallback? onBackTap;

  const News2Header({
    Key? key,
    this.onBackTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 5),
            child: BackIconButton(
              onTap: onBackTap ?? () => Get.back(),
            ),
          ),
          const SizedBox(height: 20),
          Text(AppText.news2Score2,
              style: AppTextStyles.bold.copyWith(fontSize: 25)),
        ],
      ),
    );
  }
}
