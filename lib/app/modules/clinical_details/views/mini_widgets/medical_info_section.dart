import 'package:dr_on_call/config/AppText.dart';
import 'package:flutter/material.dart';

import '../../../../../config/AppColors.dart';
import '../../../../widgets/medical_expension_tile.dart';

class ClinicalInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        MedicalExpansionTile(
          title: AppText.standardAdultDose,
          content: AppText.Desc,
        ),
        const SizedBox(height: 10),
        MedicalExpansionTile(
          title: AppText.renalDoseAdjustments,
          content: AppText.Desc,
        ),
        const SizedBox(height: 10),
        MedicalExpansionTile(
          title: AppText.maximumSafeDose,
          content: AppText.Desc,
        ),
        const SizedBox(height: 10),
        MedicalExpansionTile(
          title: AppText.preparationInstructions,
          content: AppText.Desc,
        ),
        const SizedBox(height: 10),
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(15),
        //     color: AppColors.txtWhiteColor,
        //   ),
        //   child: MedicalExpansionTile(
        //     title: 'Red Flags',
        //     content: AppText.Desc,'Warning signs to watch for...',
        //     isRedFlag: true,
        //     isRedcontent: AppText.Desc,true,
        //   ),
        // ),
      ],
    );
  }
}
