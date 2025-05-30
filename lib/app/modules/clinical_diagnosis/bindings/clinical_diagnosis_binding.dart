import 'package:get/get.dart';

import '../controllers/clinical_diagnosis_controller.dart';

class ClinicalDiagnosisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClinicalDiagnosisController>(
      () => ClinicalDiagnosisController(),
    );
  }
}
