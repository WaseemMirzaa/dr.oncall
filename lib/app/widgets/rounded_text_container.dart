import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';

import '../../config/AppColors.dart';
import '../../config/AppFonts.dart';

class RoundedTextContainer extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const RoundedTextContainer({
    Key? key,
    required this.text,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: 330,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(text,
              style:
                  AppTextStyles.bold.copyWith(color: AppColors.txtBlackColor)),
        ),
      ),
    );
  }
}
