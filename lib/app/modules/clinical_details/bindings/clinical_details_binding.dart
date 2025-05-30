import 'package:get/get.dart';

import '../controllers/clinical_details_controller.dart';

class ClinicalDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClinicalDetailsController>(
      () => ClinicalDetailsController(),
    );
  }
}
