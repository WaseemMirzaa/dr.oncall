import 'package:get/get.dart';

import '../controllers/medical_details_controller.dart';

class MedicalDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicalDetailsController>(
      () => MedicalDetailsController(),
    );
  }
}
