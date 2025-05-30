import 'package:get/get.dart';

import '../controllers/forgotview_controller.dart';

class ForgotviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotviewController>(
      () => ForgotviewController(),
    );
  }
}
