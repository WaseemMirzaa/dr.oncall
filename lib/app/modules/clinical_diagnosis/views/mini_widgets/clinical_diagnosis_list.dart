import 'package:dr_on_call/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../config/AppText.dart';
import '../../../../widgets/symptom_selection_widget.dart';

class ClinicalDiagnosisList extends StatelessWidget {
  const ClinicalDiagnosisList({super.key});

  @override
  Widget build(BuildContext context) {
    return SymptomSelectionWidget(
      symptoms: const [
        AppText.cardiacIschaemia,
        AppText.cardiovascularDiseases,
        AppText.respiratoryDiseases,
        AppText.gastrointestinalDiseases,
        AppText.metabolicAndEndocrine,
        AppText.neurologicalDiseases,
        AppText.haematologicalDiseases,
      ],
      onSelectionChanged: (selectedSymptoms) {
        print('Selected symptoms: $selectedSymptoms');
      },
      padding: const EdgeInsets.all(16.0),
      spacing: 8.0,
      onSymptomTap: (symptom) {
        switch (symptom) {
          case 'Cardiac Ischaemia':
            Get.toNamed(Routes.CLINICAL_DETAILS);
            break;
          case 'Chest Pain':
            print('Chest Pain Tapped!');
            break;
          case 'Shortness of Breath':
            print('Shortness of Breath Tapped!');
            break;
          case 'Palpitations':
            print('Palpitations Tapped!');
            break;
          case 'Syncope':
            print('Syncope Tapped!');
            break;
          case 'Abdominal Pain':
            print('Abdominal Pain Tapped!');
            break;
          case 'Headache':
            print('Headache Tapped!');
            break;
          default:
            print('No route defined for: $symptom');
        }
      },
    );
  }
}
