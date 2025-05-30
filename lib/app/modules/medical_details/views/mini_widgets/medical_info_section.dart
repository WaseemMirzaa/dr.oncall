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
          content: 'List of required investigations...',
        ),
        const SizedBox(height: 10),
        MedicalExpansionTile(
          title: 'Management Plan',
          content: 'Step-by-step management plan...',
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.txtWhiteColor,
          ),
          child: MedicalExpansionTile(
            title: 'Red Flags',
            content: 'Warning signs to watch for...',
            isRedFlag: true,
            isRedContent: true,
          ),
        ),
      ],
    );
  }
}
