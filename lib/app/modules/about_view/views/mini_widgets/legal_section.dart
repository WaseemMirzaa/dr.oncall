import 'package:dr_on_call/config/AppColors.dart';
import 'package:dr_on_call/config/AppText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../config/AppTextStyle.dart';

class LegalSection extends StatelessWidget {
  const LegalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppText.legal,
              style: AppTextStyles.medium
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppText.privacyAndPolicy,
                style: AppTextStyles.regular.copyWith(fontSize: 15),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
                size: 25,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppText.termsOfServices,
                style: AppTextStyles.regular.copyWith(fontSize: 15),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
                size: 25,
              ),
            ],
          )
        ],
      ),
    );
  }
}
