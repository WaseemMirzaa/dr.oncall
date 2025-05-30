import 'package:dr_on_call/config/AppColors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const String _fontFamily = 'IBMPlexSans';

  static const TextStyle regular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.txtWhiteColor,
  );
  static const TextStyle medium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: AppColors.txtOrangeColor,
  );

  static const TextStyle bold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 17,
    color: AppColors.txtOrangeColor,
  );
}
