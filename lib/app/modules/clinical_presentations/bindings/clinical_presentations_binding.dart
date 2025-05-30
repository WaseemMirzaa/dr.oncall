import 'package:get/get.dart';

import '../controllers/clinical_presentations_controller.dart';

class ClinicalPresentationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClinicalPresentationsController>(
      () => ClinicalPresentationsController(),
    );
  }
}
