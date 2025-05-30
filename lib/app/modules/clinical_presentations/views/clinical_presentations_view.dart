import 'package:dr_on_call/app/modules/clinical_presentations/views/mini_widgets/clinical_header.dart';
import 'package:dr_on_call/app/modules/clinical_presentations/views/mini_widgets/clinical_list.dart';
import 'package:dr_on_call/app/widgets/background_container.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config/AppText.dart';
import '../../../widgets/symptom_selection_widget.dart';
import '../controllers/clinical_presentations_controller.dart';

class ClinicalPresentationsView
    extends GetView<ClinicalPresentationsController> {
  const ClinicalPresentationsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5),
              child: ClinicalHeader(),
            ),
            SizedBox(
              height: 50,
            ),
            ClinicalList(),
          ],
        ),
      )),
    );
  }
}
