import 'package:get/get.dart';

import '../controllers/bio_chemical_diagnosis_controller.dart';

class BioChemicalDiagnosisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BioChemicalDiagnosisController>(
      () => BioChemicalDiagnosisController(),
    );
  }
}
