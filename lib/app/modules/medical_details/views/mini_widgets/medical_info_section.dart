import 'package:dr_on_call/config/AppText.dart';
import 'package:flutter/material.dart';

import '../../../../../config/AppColors.dart';
import '../../../../widgets/medical_expension_tile.dart';

class MedicalInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        MedicalExpansionTile(
          title: AppText.differentailDiagnosis,
          content: AppText.Desc,
        ),
        const SizedBox(height: 10),
        MedicalExpansionTile(
          title: 'Investigations',
          content: AppText.Desc,
        ),
        const SizedBox(height: 10),
        MedicalExpansionTile(
          title: 'Management Plan',
          content: AppText.Desc,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.txtWhiteColor,
          ),
          child: MedicalExpansionTile(
            title: 'Red Flags',
            content: AppText.Desc,
            isRedFlag: true,
            isRedContent: true,
          ),
        ),
      ],
    );
  }
}
