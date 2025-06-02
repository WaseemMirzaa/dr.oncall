import 'package:dr_on_call/config/AppText.dart';
import 'package:flutter/material.dart';

import '../../../../../config/AppColors.dart';
import '../../../../widgets/medical_expension_tile.dart';

class BioChemicalSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: [
        MedicalExpansionTile(
          title: AppText.definition,
          content: AppText.Desc,
        ),
        // const SizedBox(height: 10),
        MedicalExpansionTile(
          title: AppText.symptoms,
          content: AppText.Desc,
        ),
        // const SizedBox(height: 10),
        MedicalExpansionTile(
          title: AppText.signs,
          content: AppText.Desc,
        ),
      ],
    );
  }
}
