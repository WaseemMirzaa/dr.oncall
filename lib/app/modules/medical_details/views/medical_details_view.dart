import 'package:dr_on_call/app/modules/medical_details/views/mini_widgets/medical_info_section.dart';
import 'package:dr_on_call/app/modules/medical_details/views/mini_widgets/medical_header.dart';
import 'package:dr_on_call/app/widgets/background_container.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/medical_details_controller.dart';

class MedicalDetailsView extends GetView<MedicalDetailsController> {
  const MedicalDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: Column(
        children: [
          MedicalHeader(),
          Expanded(child: MedicalInfoSection()),
        ],
      )),
    );
  }
}
