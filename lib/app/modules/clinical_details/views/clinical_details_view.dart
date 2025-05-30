import 'package:dr_on_call/app/modules/clinical_details/views/mini_widgets/clinical_header.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/background_container.dart';
import '../controllers/clinical_details_controller.dart';
import 'mini_widgets/medical_info_section.dart';

class ClinicalDetailsView extends GetView<ClinicalDetailsController> {
  const ClinicalDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: Column(
        children: [
          ClinicalHeader(),
          Expanded(child: ClinicalInfoSection()),
        ],
      )),
    );
  }
}
