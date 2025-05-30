import 'package:dr_on_call/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../widgets/rounded_text_container.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedTextContainer(
          text: AppText.logIn,
          color: AppColors.txtWhiteColor,
          onTap: () {
            Get.toNamed(Routes.LOGIN);
          },
        ),
        const SizedBox(height: 10),
        RoundedTextContainer(
          text: AppText.register,
          color: AppColors.txtOrangeColor,
          onTap: () {
            Get.toNamed(Routes.SIGNUP);
          },
        ),
      ],
    );
  }
}
