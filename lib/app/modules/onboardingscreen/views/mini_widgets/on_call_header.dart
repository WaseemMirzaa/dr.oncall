import 'package:dr_on_call/config/AppFonts.dart';
import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppImages.dart';
import '../../../../../config/AppText.dart';

class OnCallHeader extends StatelessWidget {
  const OnCallHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.drOnCall,
            width: 250,
            height: 55,
          ),
          const SizedBox(height: 8),
          Text(AppText.on_call,
              style:
                  AppTextStyles.regular.copyWith(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
