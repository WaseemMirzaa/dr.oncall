import 'package:get/get.dart';

import '../controllers/chest_pain_controller.dart';

class ChestPainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChestPainController>(
      () => ChestPainController(),
    );
  }
}
